import 'package:injectable/injectable.dart';
import 'package:langton_ant/data/dto/position_dto.dart';
import 'package:langton_ant/data/dto/step_request_dto.dart';
import 'package:langton_ant/data/repositories/step_move.dart';

import '../entities/ant.dart';
import '../entities/grid.dart';

@singleton
class GetNextMove {
  final StepMoveRepository _repository;
  GetNextMove(this._repository);

  Future<(Grid, Ant)> call(Grid grid, Ant ant) async {
    final response = await _repository(
      StepRequestDto(
        orientation: ant.orientation.name,
        position: PositionDto(x: ant.position.$1, y: ant.position.$2),
        cellColor: grid.rows[ant.position.$2].cells[ant.position.$1].color.name,
      ),
    );
    return (
      Grid(
        rows: List.generate(
          grid.rows.length,
          (y) => GridRow(
            cells: List.generate(
              grid.rows[y].cells.length,
              (x) => grid.rows[y].cells[x].copyWith(
                color:
                    (x == response.cell.position.x &&
                        y == response.cell.position.y)
                    ? GridCellColor.values.firstWhere(
                        (e) => e.name == response.cell.color,
                      )
                    : grid.rows[y].cells[x].color,
              ),
            ),
          ),
        ),
      ),
      Ant(
        orientation: AntOrientation.values.firstWhere(
          (e) => e.name == response.ant.orientation,
        ),
        position: (response.ant.position.x, response.ant.position.y),
      ),
    );
  }
}
