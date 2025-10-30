import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/presentation/grid/view/ant_grid_view.dart';
import 'package:langton_ant/presentation/grid/view/components/cell.dart';

/// Usage: the grid should have {21} columns
Future<void> theGridShouldHaveColumns(WidgetTester tester, int columns) async {
  final grid = find.byType(AntGridView);
  expect(grid, findsOneWidget);
  final rows = find.descendant(of: grid, matching: find.byType(Row));
  expect(rows, findsNWidgets(21));
  final cells = find.descendant(of: rows, matching: find.byType(Cell));
  expect(cells, findsNWidgets(21 * 21));
}
