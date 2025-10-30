import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/presentation/ant/view/ant_component.dart';
import 'package:langton_ant/presentation/grid/view/ant_grid_view.dart';
import 'package:langton_ant/presentation/grid/view/components/cell.dart';

/// Usage: the ant should be at the center of the grid ({10}, {10})
Future<void> theAntShouldBeAtTheCenterOfTheGrid(
  WidgetTester tester,
  int x,
  int y,
) async {
  final grid = find.byType(AntGridView);
  expect(grid, findsOneWidget);
  final rows = find.descendant(of: grid, matching: find.byType(Row));
  expect(rows, findsNWidgets(21));
  final centerRow = rows.at(y);
  final cells = find.descendant(of: centerRow, matching: find.byType(Cell));
  expect(cells, findsNWidgets(21));
  final centerCell = cells.at(x);
  final ant = find.descendant(
    of: centerCell,
    matching: find.byType(AntComponent),
  );
  expect(ant, findsOneWidget);
}
