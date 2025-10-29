import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/app.dart';

/// Usage: the grid should have <size> height
Future<void> theGridShouldHaveHeight(WidgetTester tester, double size) async {
  expect(tester.getSize(find.byType(GridBox)).height, size);
}
