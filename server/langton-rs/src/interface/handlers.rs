use crate::application::{StepInput, StepUseCase};
use crate::interface::dto::{AntDto, CellDto, StepRequest, StepResponse};
use axum::{extract::State, http::StatusCode, Json};
use std::sync::Arc;

/// Handler for the POST /api/step endpoint
pub async fn step_handler(
    State(use_case): State<Arc<StepUseCase>>,
    Json(request): Json<StepRequest>,
) -> Result<Json<StepResponse>, StatusCode> {
    // Convert DTO to domain input
    let input = StepInput {
        orientation: request.orientation,
        position: request.position.into(),
        cell_color: request.cell_color,
    };

    // Execute the use case
    let output = use_case.execute(input);

    // Convert domain output to DTO
    let response = StepResponse {
        ant: AntDto {
            orientation: output.ant.orientation,
            position: output.ant.position.into(),
        },
        cell: CellDto {
            color: output.cell.color,
            position: output.cell.position.into(),
        },
    };

    Ok(Json(response))
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::domain::{Color, Orientation};
    use axum::body::Body;
    use axum::http::{Request, StatusCode};
    use axum::routing::post;
    use axum::Router;
    use tower::ServiceExt;

    #[tokio::test]
    async fn test_step_handler_white_cell() {
        let use_case = Arc::new(StepUseCase::new());
        let app = Router::new()
            .route("/api/step", post(step_handler))
            .with_state(use_case);

        let request_body = r#"{
            "orientation": "north",
            "position": {"x": 0, "y": 0},
            "cell_color": "white"
        }"#;

        let response = app
            .oneshot(
                Request::builder()
                    .method("POST")
                    .uri("/api/step")
                    .header("content-type", "application/json")
                    .body(Body::from(request_body))
                    .unwrap(),
            )
            .await
            .unwrap();

        assert_eq!(response.status(), StatusCode::OK);

        let body = axum::body::to_bytes(response.into_body(), usize::MAX)
            .await
            .unwrap();
        let response_json: StepResponse = serde_json::from_slice(&body).unwrap();

        assert_eq!(response_json.ant.orientation, Orientation::East);
        assert_eq!(response_json.ant.position.x, 1);
        assert_eq!(response_json.ant.position.y, 0);
        assert_eq!(response_json.cell.color, Color::Black);
        assert_eq!(response_json.cell.position.x, 0);
        assert_eq!(response_json.cell.position.y, 0);
    }

    #[tokio::test]
    async fn test_step_handler_black_cell() {
        let use_case = Arc::new(StepUseCase::new());
        let app = Router::new()
            .route("/api/step", post(step_handler))
            .with_state(use_case);

        let request_body = r#"{
            "orientation": "east",
            "position": {"x": 1, "y": 0},
            "cell_color": "black"
        }"#;

        let response = app
            .oneshot(
                Request::builder()
                    .method("POST")
                    .uri("/api/step")
                    .header("content-type", "application/json")
                    .body(Body::from(request_body))
                    .unwrap(),
            )
            .await
            .unwrap();

        assert_eq!(response.status(), StatusCode::OK);

        let body = axum::body::to_bytes(response.into_body(), usize::MAX)
            .await
            .unwrap();
        let response_json: StepResponse = serde_json::from_slice(&body).unwrap();

        assert_eq!(response_json.ant.orientation, Orientation::North);
        assert_eq!(response_json.ant.position.x, 1);
        assert_eq!(response_json.ant.position.y, 1);
        assert_eq!(response_json.cell.color, Color::White);
        assert_eq!(response_json.cell.position.x, 1);
        assert_eq!(response_json.cell.position.y, 0);
    }
}
