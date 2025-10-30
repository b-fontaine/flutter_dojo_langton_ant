import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/app.dart';
import 'package:langton_ant/domain/entities/grid.dart';

/// Usage: All cells should be white
Future<void> allCellsShouldBeWhite(WidgetTester tester) async {
  gridKey.currentState?.grid.rows.forEach((row) {
    for (var cell in row.cells) {
      expect(cell.color, GridCellColor.white);
    }
  });
}
