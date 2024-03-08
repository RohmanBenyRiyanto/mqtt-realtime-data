
import 'package:flutter_test/flutter_test.dart';
import 'package:mqtt_broker/app/app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
  });
}
