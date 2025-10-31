// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/repositories/step_move.dart' as _i650;
import '../../domain/usecases/get_last_grid_ant.dart' as _i575;
import '../../domain/usecases/get_next_move.dart' as _i439;
import '../../domain/usecases/move_ant_grid.dart' as _i882;
import '../../domain/usecases/stream_ant.dart' as _i549;
import '../../domain/usecases/stream_grid.dart' as _i571;
import '../../presentation/ant/ant_interactor.dart' as _i841;
import '../../presentation/ant/bloc/ant_bloc.dart' as _i894;
import '../../presentation/grid/ant_grid_interactor.dart' as _i828;
import '../../presentation/grid/bloc/ant_grid_bloc.dart' as _i1017;
import '../../presentation/move/bloc/move_bloc.dart' as _i1038;
import '../../presentation/move/move_interactor.dart' as _i546;
import '../network/api_module.dart' as _i50;
import '../network/api_module_impl.dart' as _i738;
import '../network/api_module_stub.dart' as _i364;

const String _test = 'test';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i549.StreamAnt>(() => _i549.StreamAnt());
    gh.singleton<_i571.StreamGrid>(() => _i571.StreamGrid());
    gh.singleton<_i841.AntInteractor>(
      () => _i841.AntInteractor(gh<_i549.StreamAnt>()),
    );
    gh.singleton<_i50.ApiModule>(
      () => _i364.ApiModuleStub(),
      registerFor: {_test},
    );
    gh.singleton<_i828.AntGridInteractor>(
      () => _i828.AntGridInteractor(
        gh<_i571.StreamGrid>(),
        gh<_i549.StreamAnt>(),
      ),
    );
    gh.factory<_i894.AntBloc>(() => _i894.AntBloc(gh<_i841.AntInteractor>()));
    gh.singleton<_i50.ApiModule>(
      () => _i738.ApiModuleImpl(),
      registerFor: {_prod},
    );
    gh.factory<_i1017.AntGridBloc>(
      () => _i1017.AntGridBloc(gh<_i828.AntGridInteractor>()),
    );
    gh.singleton<_i575.GetLastGridAnt>(
      () => _i575.GetLastGridAnt(gh<_i571.StreamGrid>(), gh<_i549.StreamAnt>()),
    );
    gh.factory<_i650.StepMoveRepository>(
      () => _i650.StepMoveRepository(gh<_i50.ApiModule>()),
    );
    gh.singleton<_i439.GetNextMove>(
      () => _i439.GetNextMove(gh<_i650.StepMoveRepository>()),
    );
    gh.singleton<_i882.MoveAntGrid>(
      () => _i882.MoveAntGrid(
        gh<_i439.GetNextMove>(),
        gh<_i575.GetLastGridAnt>(),
        gh<_i571.StreamGrid>(),
        gh<_i549.StreamAnt>(),
      ),
    );
    gh.singleton<_i546.MoveInteractor>(
      () => _i546.MoveInteractor(gh<_i882.MoveAntGrid>()),
    );
    gh.factory<_i1038.MoveBloc>(
      () => _i1038.MoveBloc(gh<_i546.MoveInteractor>()),
    );
    return this;
  }
}
