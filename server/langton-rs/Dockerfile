# Build stage
FROM rust:1.75 as builder

WORKDIR /app

# Copy manifests and source code
COPY Cargo.toml Cargo.lock ./
COPY src ./src
COPY tests ./tests

# Build the application
RUN cargo build --release

# Runtime stage
FROM debian:bookworm-slim

WORKDIR /app

# Install runtime dependencies
RUN apt-get update && \
    apt-get install -y ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Copy the binary from builder
COPY --from=builder /app/target/release/langton_rs /app/langton_rs

# Expose the port
EXPOSE 3000

# Run the application
CMD ["/app/langton_rs"]
