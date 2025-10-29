import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/app.dart';

/// Usage: the grid should have {21} columns
Future<void> theGridShouldHaveColumns(WidgetTester tester, int columns) async {
  expect(gridKey.currentState?.columns ?? 0, columns);
}
