import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../logic/mqtt_handler.dart';

@RoutePage()
class MessageDetailPage extends StatefulWidget {
  const MessageDetailPage({
    Key? key,
    this.name,
  }) : super(key: key);

  final String? name;

  @override
  State<MessageDetailPage> createState() => _MessageDetailPageState();
}

class _MessageDetailPageState extends State<MessageDetailPage> {
  final MqttHandler mqttHandlerUser1 = MqttHandler();
  final MqttHandler mqttHandlerUser2 = MqttHandler();
  final TextEditingController messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _connectToMqtt();
  }

  Future<void> _connectToMqtt() async {
    try {
      await mqttHandlerUser1.connect('mqttx_09247b02_user1', 'testtopic/1');
      await mqttHandlerUser2.connect('mqttx_09247b02_user2', 'testtopic/2');
    } catch (e) {
      print('Error connecting to MQTT: $e');
    }
  }

  void _disconnectFromMqtt() {
    mqttHandlerUser1.client.disconnect();
    mqttHandlerUser2.client.disconnect();
  }

  Future<void> _publishMessage(String topic) async {
    await mqttHandlerUser1.publishMessage(
      messageController.text,
      topic,
    );
    messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MQTT Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: _connectToMqtt,
                child: const Text('Connect to MQTT'),
              ),
              ElevatedButton(
                onPressed: _disconnectFromMqtt,
                child: const Text('Disconnect from MQTT'),
              ),
              ElevatedButton(
                onPressed: () => mqttHandlerUser1.publishMessage(
                  'Hello from User 1',
                  'testtopic/1',
                ),
                child: const Text('Publish Message (User 1)'),
              ),
              ElevatedButton(
                onPressed: () => mqttHandlerUser2.publishMessage(
                  'Hello from User 2',
                  'testtopic/2',
                ),
                child: const Text('Publish Message (User 2)'),
              ),
              const SizedBox(height: 16),
              ValueListenableBuilder<String>(
                valueListenable: mqttHandlerUser1.data,
                builder: (context, data, _) {
                  return Text('User 1 Received Message: $data');
                },
              ),
              const SizedBox(height: 16),
              ValueListenableBuilder<String>(
                valueListenable: mqttHandlerUser2.data,
                builder: (context, data, _) {
                  return Text('User 2 Received Message: $data');
                },
              ),
              const SizedBox(height: 16),
              TextField(
                controller: messageController,
                decoration: const InputDecoration(
                  labelText: 'Enter Message',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => _publishMessage('testtopic/1'),
                child: const Text('Publish Message (User 1)'),
              ),
              ElevatedButton(
                onPressed: () => _publishMessage('testtopic/2'),
                child: const Text('Publish Message (User 2)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
