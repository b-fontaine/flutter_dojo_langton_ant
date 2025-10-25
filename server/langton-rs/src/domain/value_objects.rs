use serde::{Deserialize, Serialize};

/// Represents a position on the grid
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub struct Position {
    pub x: i32,
    pub y: i32,
}

impl Position {
    pub fn new(x: i32, y: i32) -> Self {
        Self { x, y }
    }
}

/// Represents the orientation of the ant
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "lowercase")]
pub enum Orientation {
    North,
    East,
    South,
    West,
}

impl Orientation {
    /// Turn right (90° clockwise)
    pub fn turn_right(&self) -> Self {
        match self {
            Orientation::North => Orientation::East,
            Orientation::East => Orientation::South,
            Orientation::South => Orientation::West,
            Orientation::West => Orientation::North,
        }
    }

    /// Turn left (90° counter-clockwise)
    pub fn turn_left(&self) -> Self {
        match self {
            Orientation::North => Orientation::West,
            Orientation::East => Orientation::North,
            Orientation::South => Orientation::East,
            Orientation::West => Orientation::South,
        }
    }

    /// Get the position after moving forward one step in the current orientation
    pub fn move_forward(&self, position: Position) -> Position {
        match self {
            Orientation::North => Position::new(position.x, position.y + 1),
            Orientation::East => Position::new(position.x + 1, position.y),
            Orientation::South => Position::new(position.x, position.y - 1),
            Orientation::West => Position::new(position.x - 1, position.y),
        }
    }
}

/// Represents the color of a cell
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "lowercase")]
pub enum Color {
    White,
    Black,
}

impl Color {
    /// Toggle the color (white -> black, black -> white)
    pub fn toggle(&self) -> Self {
        match self {
            Color::White => Color::Black,
            Color::Black => Color::White,
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_position_creation() {
        let pos = Position::new(5, 10);
        assert_eq!(pos.x, 5);
        assert_eq!(pos.y, 10);
    }

    #[test]
    fn test_orientation_turn_right() {
        assert_eq!(Orientation::North.turn_right(), Orientation::East);
        assert_eq!(Orientation::East.turn_right(), Orientation::South);
        assert_eq!(Orientation::South.turn_right(), Orientation::West);
        assert_eq!(Orientation::West.turn_right(), Orientation::North);
    }

    #[test]
    fn test_orientation_turn_left() {
        assert_eq!(Orientation::North.turn_left(), Orientation::West);
        assert_eq!(Orientation::West.turn_left(), Orientation::South);
        assert_eq!(Orientation::South.turn_left(), Orientation::East);
        assert_eq!(Orientation::East.turn_left(), Orientation::North);
    }

    #[test]
    fn test_orientation_move_forward() {
        let pos = Position::new(0, 0);
        assert_eq!(Orientation::North.move_forward(pos), Position::new(0, 1));
        assert_eq!(Orientation::East.move_forward(pos), Position::new(1, 0));
        assert_eq!(Orientation::South.move_forward(pos), Position::new(0, -1));
        assert_eq!(Orientation::West.move_forward(pos), Position::new(-1, 0));
    }

    #[test]
    fn test_color_toggle() {
        assert_eq!(Color::White.toggle(), Color::Black);
        assert_eq!(Color::Black.toggle(), Color::White);
    }
}

