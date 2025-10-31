import 'package:injectable/injectable.dart';
import 'package:langton_ant/domain/usecases/stream_ant.dart';
import 'package:langton_ant/domain/usecases/stream_grid.dart';

import 'get_last_grid_ant.dart';
import 'get_next_move.dart';

@singleton
class MoveAntGrid {
  final GetNextMove _getNextMove;
  final GetLastGridAnt _getLastGridAnt;
  final StreamGrid _streamGrid;
  final StreamAnt _streamAnt;
  MoveAntGrid(
    this._getNextMove,
    this._getLastGridAnt,
    this._streamGrid,
    this._streamAnt,
  );

  Future<void> call() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
