import 'package:injectable/injectable.dart';
import 'package:langton_ant/domain/entities/ant.dart';
import 'package:langton_ant/domain/usecases/stream_ant.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/entities/grid.dart';
import '../../domain/usecases/stream_grid.dart';

@singleton
class AntGridInteractor {
  final StreamGrid _getGrid;
  final StreamAnt _getAnt;

  AntGridInteractor(this._getGrid, this._getAnt);

  Stream<Grid> get gridStream => _getGrid.stream;
  Stream<Ant> get antStream => _getAnt.stream;

  Stream<(Grid, Ant)> get stream => CombineLatestStream.combine2(
    gridStream,
    antStream,
    (grid, ant) => (grid, ant),
  );
}
