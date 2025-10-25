use crate::application::StepUseCase;
use crate::interface::handlers::step_handler;
use axum::{routing::post, Router};
use std::sync::Arc;
use tower_http::cors::{Any, CorsLayer};

/// Create and configure the web application
pub fn create_app() -> Router {
    let use_case = Arc::new(StepUseCase::new());

    // Configure CORS to allow all origins, methods, and headers
    let cors = CorsLayer::new()
        .allow_origin(Any)
        .allow_methods(Any)
        .allow_headers(Any);

    Router::new()
        .route("/api/step", post(step_handler))
        .with_state(use_case)
        .layer(cors)
}

#[cfg(test)]
mod tests {
    use super::*;
    use axum::body::Body;
    use axum::http::{header, Method, Request, StatusCode};
    use tower::ServiceExt;

    #[tokio::test]
    async fn test_cors_headers() {
        let app = create_app();

        let response = app
            .oneshot(
                Request::builder()
                    .method(Method::OPTIONS)
                    .uri("/api/step")
                    .header(header::ORIGIN, "http://example.com")
                    .header(header::ACCESS_CONTROL_REQUEST_METHOD, "POST")
                    .body(Body::empty())
                    .unwrap(),
            )
            .await
            .unwrap();

        assert_eq!(response.status(), StatusCode::OK);
        assert!(response
            .headers()
            .get(header::ACCESS_CONTROL_ALLOW_ORIGIN)
            .is_some());
    }

    #[tokio::test]
    async fn test_step_endpoint_exists() {
        let app = create_app();

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
    }
}

