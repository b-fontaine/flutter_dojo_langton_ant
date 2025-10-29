Feature: Responsive Design
  As a user of the Langton's Ant app
  I want the app to be responsive
  So that I can use it on different devices

  Background:
    Given the app is running

  Scenario Outline: Grid is square on all screens
    When the screen size is <width> x <height>
    Then the grid should have <size> height
    And the grid should have <size> width

    Examples:
      | width | height | size |
      | 300   | 600    | 300  |
      | 600   | 300    | 244  |
