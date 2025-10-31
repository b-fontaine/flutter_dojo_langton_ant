import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../move_interactor.dart';
import 'move_event.dart';
import 'move_state.dart';

@injectable
class MoveBloc extends Bloc<MoveEvent, MoveState> {
  final MoveInteractor _interactor;

  @factoryMethod
  MoveBloc(this._interactor) : super(MoveReady()) {
    on<MoveForwardEvent>(_onMoveForwardEvent);
  }

  Future<void> _onMoveForwardEvent(
    MoveForwardEvent event,
    Emitter<MoveState> emit,
  ) async {
    emit(MoveLoading());
    await _interactor();
    emit(MoveReady());
  }
}
