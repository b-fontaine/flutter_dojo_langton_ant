import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/presentation/ant/view/ant_component.dart';
import 'package:langton_ant/presentation/grid/view/ant_grid_view.dart';
import 'package:langton_ant/presentation/grid/view/components/cell.dart';

/// Usage: the ant should be at position ({11}, {10})
Future<void> theAntShouldBeAtPosition(WidgetTester tester, int x, int y) async {
  final grid = find.byType(AntGridView);
  expect(grid, findsOneWidget);
  final rows = find.descendant(of: grid, matching: find.byType(Row));
  expect(rows, findsNWidgets(21));
  final targetRow = rows.at(y);
  final cells = find.descendant(of: targetRow, matching: find.byType(Cell));
  expect(cells, findsNWidgets(21));
  final targetCell = cells.at(x);
  final ant = find.descendant(
    of: targetCell,
    matching: find.byType(AntComponent),
  );
  expect(ant, findsOneWidget);
}
