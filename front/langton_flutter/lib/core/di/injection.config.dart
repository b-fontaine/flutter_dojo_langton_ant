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

import '../../domain/usecases/get_ant.dart' as _i452;
import '../../domain/usecases/get_grid.dart' as _i866;
import '../../presentation/ant/ant_interactor.dart' as _i841;
import '../../presentation/ant/bloc/ant_bloc.dart' as _i894;
import '../../presentation/grid/ant_grid_interactor.dart' as _i828;
import '../../presentation/grid/bloc/ant_grid_bloc.dart' as _i1017;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i452.GetAnt>(() => _i452.GetAnt());
    gh.singleton<_i866.GetGrid>(() => _i866.GetGrid());
    gh.singleton<_i841.AntInteractor>(
      () => _i841.AntInteractor(gh<_i452.GetAnt>()),
    );
    gh.factory<_i894.AntBloc>(() => _i894.AntBloc(gh<_i841.AntInteractor>()));
    gh.singleton<_i828.AntGridInteractor>(
      () => _i828.AntGridInteractor(gh<_i866.GetGrid>()),
    );
    gh.factory<_i1017.AntGridBloc>(
      () => _i1017.AntGridBloc(gh<_i828.AntGridInteractor>()),
    );
    return this;
  }
}
