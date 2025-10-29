import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/app.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await tester.pumpWidget(App());
}
