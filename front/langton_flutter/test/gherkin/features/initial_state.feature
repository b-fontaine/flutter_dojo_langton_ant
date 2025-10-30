import 'package:langton_ant/domain/entities/ant.dart';
import 'package:flutter/material.dart';

Feature: Initial State
  As a user of the Langton's Ant app
  I want to see the initial state of the ant and the grid
  So that I can understand the starting point of the simulation

  Background:
    Given the app is running

  Scenario: Initial dimensions of the grid
    Then the grid should have {21} columns
    And the grid should have {21} rows

  Scenario: Empty grid if full white
    Then All cells should be white

  Scenario: Ant at the center of the grid
    Then the ant should be at the center of the grid ({10}, {10})

  Scenario: Ant facing north
    Then the ant should be facing {AntOrientation.north}
