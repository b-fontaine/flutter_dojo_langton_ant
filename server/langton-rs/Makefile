.PHONY: help install deps lint test build docker-build docker-up compose-up clean

help:
	@echo "Available targets:"
	@echo "  install       - Install/update dependencies"
	@echo "  deps          - Alias for install"
	@echo "  lint          - Run Rust linter (clippy) with no warnings allowed"
	@echo "  test          - Execute all tests including Gherkin/BDD scenarios"
	@echo "  build         - Compile the Rust application"
	@echo "  docker-build  - Build the Docker image"
	@echo "  docker-up     - Start the application using docker-compose"
	@echo "  compose-up    - Alias for docker-up"
	@echo "  clean         - Clean build artifacts"

install:
	cargo fetch
	cargo build --release

deps: install

lint:
	cargo clippy --all-targets -- -D warnings

test:
	cargo test

build:
	cargo build --release

docker-build:
	docker build -t langton-rs:latest .

docker-up:
	docker-compose up -d

compose-up: docker-up

clean:
	cargo clean
