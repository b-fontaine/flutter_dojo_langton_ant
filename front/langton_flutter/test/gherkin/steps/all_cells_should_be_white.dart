import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/app.dart';

/// Usage: All cells should be white
Future<void> allCellsShouldBeWhite(WidgetTester tester) async {
  gridKey.currentState?.grid.forEach((row) {
    for (var cell in row) {
      expect(cell, true);
    }
  });
}
