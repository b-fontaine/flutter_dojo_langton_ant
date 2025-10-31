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
    await emit.onEach(
      _interactor.stream,
      onData: (data) => emit(AntGridLoaded(data.$1, data.$2.position)),
    );
  }
}
