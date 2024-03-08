import 'package:flutter/foundation.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

import '../../../../utils/common/common.dart';

class MqttHandler with ChangeNotifier {
  final ValueNotifier<String> data = ValueNotifier<String>("");
  late MqttServerClient client;

  Future<void> connect(String clientId, String topic) async {
    client = MqttServerClient.withPort('broker.emqx.io', clientId, 1883);
    client.logging(on: true);
    client.onConnected = onConnected;
    client.onDisconnected = onDisconnected;
    client.onUnsubscribed = onUnsubscribed;
    client.onSubscribed = onSubscribed;
    client.onSubscribeFail = onSubscribeFail;
    client.pongCallback = pong;
    client.keepAlivePeriod = 60;
    client.logging(on: true);

    client.setProtocolV311();

    final connMessage = MqttConnectMessage()
        .withWillTopic('willtopic')
        .withWillMessage('Will message')
        .startClean()
        .withWillQos(MqttQos.atLeastOnce);

    Logger.logInfo('MQTT_LOGS::Mosquitto client connecting....');

    client.connectionMessage = connMessage;
    try {
      await client.connect();
    } catch (e) {
      Logger.logInfo('Exception: $e');
      client.disconnect();
      throw Exception('MQTT connection failed: $e');
    }

    if (client.connectionStatus!.state == MqttConnectionState.connected) {
      Logger.logInfo('MQTT_LOGS::Mosquitto client connected');
    } else {
      Logger.logInfo(
          'MQTT_LOGS::ERROR Mosquitto client connection failed - disconnecting, status is ${client.connectionStatus}');
      client.disconnect();
      throw Exception('MQTT connection failed: ${client.connectionStatus}');
    }

    Logger.logInfo('MQTT_LOGS::Subscribing to the $topic topic');
    client.subscribe(topic, MqttQos.atMostOnce);

    client.updates!.listen((List<MqttReceivedMessage<MqttMessage?>>? c) {
      final recMess = c![0].payload as MqttPublishMessage;
      final pt =
          MqttPublishPayload.bytesToStringAsString(recMess.payload.message);
      final dateTime = DateTime.now().toString(); // Get current date and time

      final messageWithTimestamp =
          '$dateTime - $pt'; // Combine timestamp with message

      data.value = messageWithTimestamp;
      notifyListeners();
      Logger.logInfo(
          'MQTT_LOGS:: New data arrived: topic is <${c[0].topic}>, payload is $messageWithTimestamp');
      Logger.logInfo('');
    });
  }

  void onConnected() {
    Logger.logInfo('MQTT_LOGS:: Connected');
  }

  void onDisconnected() {
    Logger.logInfo('MQTT_LOGS:: Disconnected');
  }

  void onSubscribed(String topic) {
    Logger.logInfo('MQTT_LOGS:: Subscribed topic: $topic');
  }

  void onSubscribeFail(String topic) {
    Logger.logInfo('MQTT_LOGS:: Failed to subscribe $topic');
  }

  void onUnsubscribed(String? topic) {
    Logger.logInfo('MQTT_LOGS:: Unsubscribed topic: $topic');
  }

  void pong() {
    Logger.logInfo('MQTT_LOGS:: Ping response client callback invoked');
  }

  Future<void> publishMessage(String message, String topic) async {
    try {
      final builder = MqttClientPayloadBuilder();
      builder.addString(message);
      client.publishMessage(topic, MqttQos.atMostOnce, builder.payload!);
    } catch (e) {
      Logger.logInfo('MQTT_LOGS:: Error publishing message: $e');
    }
  }
}
