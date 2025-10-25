use crate::domain::{Ant, Cell, Color, Orientation, Position};

/// Input for the step use case
#[derive(Debug, Clone)]
pub struct StepInput {
    pub orientation: Orientation,
    pub position: Position,
    pub cell_color: Color,
}

/// Output from the step use case
#[derive(Debug, Clone)]
pub struct StepOutput {
    pub ant: Ant,
    pub cell: Cell,
}

/// Use case for executing one step of Langton's Ant algorithm
pub struct StepUseCase;

impl StepUseCase {
    pub fn new() -> Self {
        Self
    }

    /// Execute one step of the Langton's Ant algorithm
    pub fn execute(&self, input: StepInput) -> StepOutput {
        let ant = Ant::new(input.orientation, input.position);
        let (new_ant, modified_cell) = ant.step(input.cell_color);

        StepOutput {
            ant: new_ant,
            cell: modified_cell,
        }
    }
}

impl Default for StepUseCase {
    fn default() -> Self {
        Self::new()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_step_use_case_white_cell() {
        let use_case = StepUseCase::new();
        let input = StepInput {
            orientation: Orientation::North,
            position: Position::new(0, 0),
            cell_color: Color::White,
        };

        let output = use_case.execute(input);

        assert_eq!(output.ant.orientation, Orientation::East);
        assert_eq!(output.ant.position, Position::new(1, 0));
        assert_eq!(output.cell.color, Color::Black);
        assert_eq!(output.cell.position, Position::new(0, 0));
    }

    #[test]
    fn test_step_use_case_black_cell() {
        let use_case = StepUseCase::new();
        let input = StepInput {
            orientation: Orientation::East,
            position: Position::new(1, 0),
            cell_color: Color::Black,
        };

        let output = use_case.execute(input);

        assert_eq!(output.ant.orientation, Orientation::North);
        assert_eq!(output.ant.position, Position::new(1, 1));
        assert_eq!(output.cell.color, Color::White);
        assert_eq!(output.cell.position, Position::new(1, 0));
    }
}

