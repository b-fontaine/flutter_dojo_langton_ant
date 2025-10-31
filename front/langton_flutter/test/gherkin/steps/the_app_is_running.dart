import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/app.dart';
import 'package:langton_ant/core/di/injection.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  getIt.allowReassignment = true;
  await getIt.reset();
  configureDependencies(environment: 'test');
  await tester.pumpWidget(App());
  await tester.pumpAndSettle();
}
