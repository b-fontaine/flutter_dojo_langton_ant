import 'package:injectable/injectable.dart';

import '../../domain/entities/grid.dart';
import '../../domain/usecases/get_grid.dart';

@singleton
class AntGridInteractor {
  final GetGrid _getGrid;

  AntGridInteractor(this._getGrid);

  Stream<Grid> get stream => _getGrid.stream;
}
