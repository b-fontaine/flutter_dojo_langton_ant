import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../ant_interactor.dart';
import 'ant_event.dart';
import 'ant_state.dart';

@injectable
class AntBloc extends Bloc<AntEvent, AntState> {
  final AntInteractor _interactor;
  AntBloc(this._interactor) : super(AntInitial()) {
    on<GetAntEvent>(_onGetAntEvent);
  }

  FutureOr<void> _onGetAntEvent(
    GetAntEvent event,
    Emitter<AntState> emit,
  ) async {
    await emit.onEach(
      _interactor.stream,
      onData: (ant) => emit(AntLoaded(ant)),
    );
  }
}
