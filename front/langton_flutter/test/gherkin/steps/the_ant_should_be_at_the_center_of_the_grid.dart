import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/app.dart';

/// Usage: the ant should be at the center of the grid ({10}, {10})
Future<void> theAntShouldBeAtTheCenterOfTheGrid(
  WidgetTester tester,
  int x,
  int y,
) async {
  expect(gridKey.currentState?.ant.x ?? 0, x);
  expect(gridKey.currentState?.ant.y ?? 0, y);
}
