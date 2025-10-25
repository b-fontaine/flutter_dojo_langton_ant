use cucumber::{given, then, when, World};
use langton_rs::application::{StepInput, StepUseCase};
use langton_rs::domain::{Color, Orientation, Position};

#[derive(Debug, Default, World)]
pub struct LangtonWorld {
    orientation: Option<Orientation>,
    position: Option<Position>,
    cell_color: Option<Color>,
    result_orientation: Option<Orientation>,
    result_position: Option<Position>,
    result_cell_color: Option<Color>,
    result_cell_position: Option<Position>,
}

#[given("the API is running")]
fn api_is_running(_world: &mut LangtonWorld) {
    // No-op: API is always available in tests
}

#[given(regex = r"^the ant is at position \((-?\d+), (-?\d+)\)$")]
fn ant_at_position(world: &mut LangtonWorld, x: i32, y: i32) {
    world.position = Some(Position::new(x, y));
}

#[given(regex = r#"^the ant is facing "([^"]+)"$"#)]
fn ant_facing(world: &mut LangtonWorld, orientation: String) {
    world.orientation = Some(match orientation.as_str() {
        "north" => Orientation::North,
        "east" => Orientation::East,
        "south" => Orientation::South,
        "west" => Orientation::West,
        _ => panic!("Unknown orientation: {}", orientation),
    });
}

#[given(regex = r#"^the current cell is "([^"]+)"$"#)]
fn current_cell_color(world: &mut LangtonWorld, color: String) {
    world.cell_color = Some(match color.as_str() {
        "white" => Color::White,
        "black" => Color::Black,
        _ => panic!("Unknown color: {}", color),
    });
}

#[when("I request a step")]
fn request_step(world: &mut LangtonWorld) {
    let use_case = StepUseCase::new();
    let input = StepInput {
        orientation: world.orientation.unwrap(),
        position: world.position.unwrap(),
        cell_color: world.cell_color.unwrap(),
    };

    let output = use_case.execute(input);

    world.result_orientation = Some(output.ant.orientation);
    world.result_position = Some(output.ant.position);
    world.result_cell_color = Some(output.cell.color);
    world.result_cell_position = Some(output.cell.position);
}

#[then(regex = r#"^the ant should be facing "([^"]+)"$"#)]
fn ant_should_be_facing(world: &mut LangtonWorld, orientation: String) {
    let expected = match orientation.as_str() {
        "north" => Orientation::North,
        "east" => Orientation::East,
        "south" => Orientation::South,
        "west" => Orientation::West,
        _ => panic!("Unknown orientation: {}", orientation),
    };
    assert_eq!(world.result_orientation.unwrap(), expected);
}

#[then(regex = r"^the ant should be at position \((-?\d+), (-?\d+)\)$")]
fn ant_should_be_at_position(world: &mut LangtonWorld, x: i32, y: i32) {
    let expected = Position::new(x, y);
    assert_eq!(world.result_position.unwrap(), expected);
}

#[then(regex = r#"^the cell at position \((-?\d+), (-?\d+)\) should be "([^"]+)"$"#)]
fn cell_should_be_color(world: &mut LangtonWorld, x: i32, y: i32, color: String) {
    let expected_color = match color.as_str() {
        "white" => Color::White,
        "black" => Color::Black,
        _ => panic!("Unknown color: {}", color),
    };
    let expected_position = Position::new(x, y);

    assert_eq!(world.result_cell_color.unwrap(), expected_color);
    assert_eq!(world.result_cell_position.unwrap(), expected_position);
}

#[tokio::main]
async fn main() {
    LangtonWorld::run("tests/features").await;
}

