import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/injection.dart';
import '../bloc/ant_grid_bloc.dart';
import 'ant_grid_view.dart';

class AntGridComponent extends StatelessWidget {
  const AntGridComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AntGridBloc>(
      create: (context) => getIt<AntGridBloc>(),
      child: const AntGridView(),
    );
  }
}
