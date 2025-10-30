import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langton_ant/core/di/injection.dart';

import '../bloc/ant_bloc.dart';
import 'ant_view.dart';

class AntComponent extends StatelessWidget {
  const AntComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AntBloc>(
      create: (_) => getIt<AntBloc>(),
      child: const AntView(),
    );
  }
}
