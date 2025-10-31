import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/domain/entities/grid.dart';
import 'package:langton_ant/presentation/grid/view/ant_grid_view.dart';
import 'package:langton_ant/presentation/grid/view/components/cell.dart';

/// Usage: the cell at position ({10}, {10}) should be {GridCellColor.black}
Future<void> theCellAtPositionShouldBe(
  WidgetTester tester,
  int x,
  int y,
  GridCellColor color,
) async {
  final grid = find.byType(AntGridView);
  expect(grid, findsOneWidget);
  final rows = find.descendant(of: grid, matching: find.byType(Row));
  expect(rows, findsNWidgets(21));
  final targetRow = rows.at(y);
  final cells = find.descendant(of: targetRow, matching: find.byType(Cell));
  expect(cells, findsNWidgets(21));
  final targetCell = cells.at(x);
  final cell = tester.widget<Cell>(targetCell);
  expect(cell.cell.color, color);
}
