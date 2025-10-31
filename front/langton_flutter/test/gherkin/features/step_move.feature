import 'package:langton_ant/domain/entities/ant.dart';
import 'package:flutter/material.dart';
import 'package:langton_ant/domain/entities/grid.dart';

Feature: Step Move
  As a user of the Langton's Ant app
  I want to move the ant one step forward
  So that I can see the ant's behavior on different colored cells

  Scenario: Move forward on white cell
    Given the app is running
    When I move the ant forward
    Then the ant should be facing {AntOrientation.east}
    And the ant should be at position ({11}, {10})
    And the cell at position ({10}, {10}) should be {GridCellColor.black}
