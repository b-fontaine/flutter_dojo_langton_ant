import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/presentation/grid/view/ant_grid_view.dart';

/// Usage: the grid should have {21} rows
Future<void> theGridShouldHaveRows(WidgetTester tester, int rows) async {
  final grid = find.byType(AntGridView);
  expect(grid, findsOneWidget);
  final rows = find.descendant(of: grid, matching: find.byType(Row));
  expect(rows, findsNWidgets(21));
}
