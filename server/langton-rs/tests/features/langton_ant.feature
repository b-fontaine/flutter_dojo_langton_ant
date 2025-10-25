Feature: Langton's Ant Simulation
  As a user of the Langton's Ant API
  I want to simulate one step of the ant's movement
  So that I can understand the ant's behavior on different colored cells

  Background:
    Given the API is running

  Scenario: Ant on white cell facing north
    Given the ant is at position (0, 0)
    And the ant is facing "north"
    And the current cell is "white"
    When I request a step
    Then the ant should be facing "east"
    And the ant should be at position (1, 0)
    And the cell at position (0, 0) should be "black"

  Scenario: Ant on white cell facing east
    Given the ant is at position (0, 0)
    And the ant is facing "east"
    And the current cell is "white"
    When I request a step
    Then the ant should be facing "south"
    And the ant should be at position (0, -1)
    And the cell at position (0, 0) should be "black"

  Scenario: Ant on white cell facing south
    Given the ant is at position (0, 0)
    And the ant is facing "south"
    And the current cell is "white"
    When I request a step
    Then the ant should be facing "west"
    And the ant should be at position (-1, 0)
    And the cell at position (0, 0) should be "black"

  Scenario: Ant on white cell facing west
    Given the ant is at position (0, 0)
    And the ant is facing "west"
    And the current cell is "white"
    When I request a step
    Then the ant should be facing "north"
    And the ant should be at position (0, 1)
    And the cell at position (0, 0) should be "black"

  Scenario: Ant on black cell facing north
    Given the ant is at position (0, 0)
    And the ant is facing "north"
    And the current cell is "black"
    When I request a step
    Then the ant should be facing "west"
    And the ant should be at position (-1, 0)
    And the cell at position (0, 0) should be "white"

  Scenario: Ant on black cell facing east
    Given the ant is at position (0, 0)
    And the ant is facing "east"
    And the current cell is "black"
    When I request a step
    Then the ant should be facing "north"
    And the ant should be at position (0, 1)
    And the cell at position (0, 0) should be "white"

  Scenario: Ant on black cell facing south
    Given the ant is at position (0, 0)
    And the ant is facing "south"
    And the current cell is "black"
    When I request a step
    Then the ant should be facing "east"
    And the ant should be at position (1, 0)
    And the cell at position (0, 0) should be "white"

  Scenario: Ant on black cell facing west
    Given the ant is at position (0, 0)
    And the ant is facing "west"
    And the current cell is "black"
    When I request a step
    Then the ant should be facing "south"
    And the ant should be at position (0, -1)
    And the cell at position (0, 0) should be "white"

  Scenario: Multiple steps sequence
    Given the ant is at position (0, 0)
    And the ant is facing "north"
    And the current cell is "white"
    When I request a step
    Then the ant should be facing "east"
    And the ant should be at position (1, 0)
    And the cell at position (0, 0) should be "black"

  Scenario: Ant at different positions
    Given the ant is at position (5, 10)
    And the ant is facing "north"
    And the current cell is "white"
    When I request a step
    Then the ant should be facing "east"
    And the ant should be at position (6, 10)
    And the cell at position (5, 10) should be "black"

  Scenario: Ant at negative positions
    Given the ant is at position (-3, -7)
    And the ant is facing "south"
    And the current cell is "black"
    When I request a step
    Then the ant should be facing "east"
    And the ant should be at position (-2, -7)
    And the cell at position (-3, -7) should be "white"

