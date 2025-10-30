import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/app.dart';

/// Usage: the grid should have {21} rows
Future<void> theGridShouldHaveRows(WidgetTester tester, int rows) async {
  expect(gridKey.currentState?.grid.rows.length ?? 0, rows);
}
