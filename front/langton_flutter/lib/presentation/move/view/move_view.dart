import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/move_bloc.dart';
import '../bloc/move_event.dart';
import '../bloc/move_state.dart';

class MoveView extends StatelessWidget {
  const MoveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: BlocBuilder<MoveBloc, MoveState>(
        builder: (context, state) {
          return IconButton(
            icon: Icon(switch (state) {
              MoveLoading() => Icons.hourglass_bottom,
              MoveReady() => Icons.play_arrow,
            }),
            onPressed: () {
              context.read<MoveBloc>().add(MoveForwardEvent());
            },
          );
        },
      ),
    );
  }
}
