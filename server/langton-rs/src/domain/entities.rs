use super::value_objects::{Color, Orientation, Position};
use serde::{Deserialize, Serialize};

/// Represents the ant entity
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
pub struct Ant {
    pub orientation: Orientation,
    pub position: Position,
}

impl Ant {
    pub fn new(orientation: Orientation, position: Position) -> Self {
        Self {
            orientation,
            position,
        }
    }

    /// Execute one step of Langton's Ant algorithm
    /// Returns the new ant state and the new cell state
    pub fn step(&self, cell_color: Color) -> (Ant, Cell) {
        // Determine the new orientation based on the current cell color
        let new_orientation = match cell_color {
            Color::White => self.orientation.turn_right(),
            Color::Black => self.orientation.turn_left(),
        };

        // Toggle the cell color
        let new_cell_color = cell_color.toggle();

        // Move forward in the new orientation
        let new_position = new_orientation.move_forward(self.position);

        // Create the new ant state
        let new_ant = Ant::new(new_orientation, new_position);

        // Create the cell that was just modified (at the old position)
        let modified_cell = Cell::new(new_cell_color, self.position);

        (new_ant, modified_cell)
    }
}

/// Represents a cell on the grid
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
pub struct Cell {
    pub color: Color,
    pub position: Position,
}

impl Cell {
    pub fn new(color: Color, position: Position) -> Self {
        Self { color, position }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_ant_creation() {
        let ant = Ant::new(Orientation::North, Position::new(0, 0));
        assert_eq!(ant.orientation, Orientation::North);
        assert_eq!(ant.position, Position::new(0, 0));
    }

    #[test]
    fn test_ant_step_on_white_cell() {
        // On white cell: turn right, change cell to black, move forward
        let ant = Ant::new(Orientation::North, Position::new(0, 0));
        let (new_ant, modified_cell) = ant.step(Color::White);

        // Should turn right (North -> East)
        assert_eq!(new_ant.orientation, Orientation::East);
        // Should move forward in East direction
        assert_eq!(new_ant.position, Position::new(1, 0));
        // Cell at old position should be black
        assert_eq!(modified_cell.color, Color::Black);
        assert_eq!(modified_cell.position, Position::new(0, 0));
    }

    #[test]
    fn test_ant_step_on_black_cell() {
        // On black cell: turn left, change cell to white, move forward
        let ant = Ant::new(Orientation::East, Position::new(1, 0));
        let (new_ant, modified_cell) = ant.step(Color::Black);

        // Should turn left (East -> North)
        assert_eq!(new_ant.orientation, Orientation::North);
        // Should move forward in North direction
        assert_eq!(new_ant.position, Position::new(1, 1));
        // Cell at old position should be white
        assert_eq!(modified_cell.color, Color::White);
        assert_eq!(modified_cell.position, Position::new(1, 0));
    }

    #[test]
    fn test_cell_creation() {
        let cell = Cell::new(Color::White, Position::new(5, 5));
        assert_eq!(cell.color, Color::White);
        assert_eq!(cell.position, Position::new(5, 5));
    }

    #[test]
    fn test_complete_sequence() {
        // Test a complete sequence of moves
        let ant = Ant::new(Orientation::North, Position::new(0, 0));

        // Step 1: On white cell at (0,0)
        let (ant, cell) = ant.step(Color::White);
        assert_eq!(ant.orientation, Orientation::East);
        assert_eq!(ant.position, Position::new(1, 0));
        assert_eq!(cell.color, Color::Black);
        assert_eq!(cell.position, Position::new(0, 0));

        // Step 2: On white cell at (1,0)
        let (ant, cell) = ant.step(Color::White);
        assert_eq!(ant.orientation, Orientation::South);
        assert_eq!(ant.position, Position::new(1, -1));
        assert_eq!(cell.color, Color::Black);
        assert_eq!(cell.position, Position::new(1, 0));

        // Step 3: On white cell at (1,-1)
        let (ant, cell) = ant.step(Color::White);
        assert_eq!(ant.orientation, Orientation::West);
        assert_eq!(ant.position, Position::new(0, -1));
        assert_eq!(cell.color, Color::Black);
        assert_eq!(cell.position, Position::new(1, -1));

        // Step 4: On white cell at (0,-1)
        let (ant, cell) = ant.step(Color::White);
        assert_eq!(ant.orientation, Orientation::North);
        assert_eq!(ant.position, Position::new(0, 0));
        assert_eq!(cell.color, Color::Black);
        assert_eq!(cell.position, Position::new(0, -1));

        // Step 5: Now on black cell at (0,0) - should turn left
        let (ant, cell) = ant.step(Color::Black);
        assert_eq!(ant.orientation, Orientation::West);
        assert_eq!(ant.position, Position::new(-1, 0));
        assert_eq!(cell.color, Color::White);
        assert_eq!(cell.position, Position::new(0, 0));
    }
}

