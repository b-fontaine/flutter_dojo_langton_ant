import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../ant_grid_interactor.dart';
import 'ant_grid_event.dart';
import 'ant_grid_state.dart';

@injectable
class AntGridBloc extends Bloc<AntGridEvent, AntGridState> {
  final AntGridInteractor _interactor;

  @factoryMethod
  AntGridBloc(this._interactor) : super(AntGridInitial()) {
    on<AntGridInitiate>(_onInitiate);
  }

  Future<void> _onInitiate(
    AntGridInitiate event,
    Emitter<AntGridState> emit,
  ) async {
    /*emit(
      AntGridLoaded(
        Grid(
          rows: List.generate(
            21,
            (index) => GridRow(
              cells: List.generate(
                21,
                (index) => GridCell(color: GridCellColor.white),
              ),
            ),
          ),
        ),
        (10, 10),
      ),
    );*/
    await emit.onEach(
      _interactor.stream,
      onData: (grid) => emit(AntGridLoaded(grid, (10, 10))),
    );
  }
}
