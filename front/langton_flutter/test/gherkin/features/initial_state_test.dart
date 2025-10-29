// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:langton_ant/presentation/grid/ant.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './../steps/the_app_is_running.dart';
import './../steps/the_grid_should_have_columns.dart';
import './../steps/the_grid_should_have_rows.dart';
import './../steps/all_cells_should_be_white.dart';
import './../steps/the_ant_should_be_at_the_center_of_the_grid.dart';
import './../steps/the_ant_should_be_facing.dart';

void main() {
  group('''Initial State''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await theAppIsRunning(tester);
    }

    testWidgets('''Initial dimensions of the grid''', (tester) async {
      await bddSetUp(tester);
      await theGridShouldHaveColumns(tester, 21);
      await theGridShouldHaveRows(tester, 21);
    });
    testWidgets('''Empty grid if full white''', (tester) async {
      await bddSetUp(tester);
      await allCellsShouldBeWhite(tester);
    });
    testWidgets('''Ant at the center of the grid''', (tester) async {
      await bddSetUp(tester);
      await theAntShouldBeAtTheCenterOfTheGrid(tester, 10, 10);
    });
    testWidgets('''Ant facing north''', (tester) async {
      await bddSetUp(tester);
      await theAntShouldBeFacing(tester, AntOrientation.north);
    });
  });
}
