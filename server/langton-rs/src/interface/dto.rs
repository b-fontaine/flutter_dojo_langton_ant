use crate::domain::{Color, Orientation, Position};
use serde::{Deserialize, Serialize};

/// Request DTO for the step endpoint
#[derive(Debug, Deserialize)]
pub struct StepRequest {
    pub orientation: Orientation,
    pub position: PositionDto,
    pub cell_color: Color,
}

/// Response DTO for the step endpoint
#[derive(Debug, Serialize, Deserialize)]
pub struct StepResponse {
    pub ant: AntDto,
    pub cell: CellDto,
}

/// DTO for ant information
#[derive(Debug, Serialize, Deserialize)]
pub struct AntDto {
    pub orientation: Orientation,
    pub position: PositionDto,
}

/// DTO for cell information
#[derive(Debug, Serialize, Deserialize)]
pub struct CellDto {
    pub color: Color,
    pub position: PositionDto,
}

/// DTO for position
#[derive(Debug, Serialize, Deserialize)]
pub struct PositionDto {
    pub x: i32,
    pub y: i32,
}

impl From<Position> for PositionDto {
    fn from(pos: Position) -> Self {
        Self { x: pos.x, y: pos.y }
    }
}

impl From<PositionDto> for Position {
    fn from(dto: PositionDto) -> Self {
        Position::new(dto.x, dto.y)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_position_dto_conversion() {
        let pos = Position::new(5, 10);
        let dto: PositionDto = pos.into();
        assert_eq!(dto.x, 5);
        assert_eq!(dto.y, 10);

        let pos2: Position = dto.into();
        assert_eq!(pos2, pos);
    }

    #[test]
    fn test_deserialize_step_request() {
        let json = r#"{
            "orientation": "north",
            "position": {"x": 0, "y": 0},
            "cell_color": "white"
        }"#;

        let request: StepRequest = serde_json::from_str(json).unwrap();
        assert_eq!(request.orientation, Orientation::North);
        assert_eq!(request.position.x, 0);
        assert_eq!(request.position.y, 0);
        assert_eq!(request.cell_color, Color::White);
    }

    #[test]
    fn test_serialize_step_response() {
        let response = StepResponse {
            ant: AntDto {
                orientation: Orientation::East,
                position: PositionDto { x: 1, y: 0 },
            },
            cell: CellDto {
                color: Color::Black,
                position: PositionDto { x: 0, y: 0 },
            },
        };

        let json = serde_json::to_string(&response).unwrap();
        assert!(json.contains("\"orientation\":\"east\""));
        assert!(json.contains("\"color\":\"black\""));
    }
}
