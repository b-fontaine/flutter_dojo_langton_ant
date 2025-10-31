// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:langton_ant/domain/entities/ant.dart';
import 'package:flutter/material.dart';
import 'package:langton_ant/domain/entities/grid.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './../steps/the_app_is_running.dart';
import './../steps/i_move_the_ant_forward.dart';
import './../steps/the_ant_should_be_facing.dart';
import './../steps/the_ant_should_be_at_position.dart';
import './../steps/the_cell_at_position_should_be.dart';

void main() {
  group('''Step Move''', () {
    testWidgets('''Move forward on white cell''', (tester) async {
      await theAppIsRunning(tester);
      await iMoveTheAntForward(tester);
      await theAntShouldBeFacing(tester, AntOrientation.east);
      await theAntShouldBeAtPosition(tester, 11, 10);
      await theCellAtPositionShouldBe(tester, 10, 10, GridCellColor.black);
    });
  });
}
