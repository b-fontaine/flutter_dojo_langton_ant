import 'package:injectable/injectable.dart';
import 'package:langton_ant/domain/usecases/move_ant_grid.dart';

@singleton
class MoveInteractor {
  final MoveAntGrid _moveAntGrid;
  MoveInteractor(this._moveAntGrid);

  Future<void> call() => _moveAntGrid();
}
