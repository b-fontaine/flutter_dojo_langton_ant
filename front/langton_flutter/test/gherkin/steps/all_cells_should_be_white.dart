import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/domain/entities/grid.dart';
import 'package:langton_ant/presentation/grid/view/components/cell.dart';

/// Usage: All cells should be white
Future<void> allCellsShouldBeWhite(WidgetTester tester) async {
  final cells = find.byType(Cell);
  expect(cells, findsNWidgets(21 * 21));
  for (final cell in cells.evaluate()) {
    expect((cell.widget as Cell).cell.color, GridCellColor.white);
  }
}
