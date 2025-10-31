import 'package:injectable/injectable.dart';

import '../entities/ant.dart';
import '../entities/grid.dart';
import 'stream_ant.dart';
import 'stream_grid.dart';

@singleton
class GetLastGridAnt {
  final StreamGrid _streamGrid;
  final StreamAnt _streamAnt;

  GetLastGridAnt(this._streamGrid, this._streamAnt);

  Future<(Grid, Ant)> call() async {
    final grid = await _streamGrid.stream.last;
    final ant = await _streamAnt.stream.last;
    return (grid, ant);
  }
}
