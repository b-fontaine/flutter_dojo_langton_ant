import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/app.dart';

/// Usage: the grid should have <size> width
Future<void> theGridShouldHaveWidth(WidgetTester tester, double size) async {
  expect(tester.getSize(find.byKey(gridKey)).width, size);
}
