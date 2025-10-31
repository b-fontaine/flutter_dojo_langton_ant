import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/injection.dart';
import '../bloc/move_bloc.dart';
import 'move_view.dart';

class MoveComponent extends StatelessWidget {
  const MoveComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MoveBloc>(
      create: (_) => getIt<MoveBloc>(),
      child: const MoveView(),
    );
  }
}
