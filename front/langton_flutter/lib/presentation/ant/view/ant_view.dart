import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/ant_bloc.dart';
import '../bloc/ant_event.dart';
import '../bloc/ant_state.dart';

class AntView extends StatelessWidget {
  const AntView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AntBloc, AntState>(
      builder: (context, state) {
        if (state is AntInitial) {
          context.read<AntBloc>().add(GetAntEvent());
        }
        return Center(
          child: RotatedBox(
            quarterTurns: state is AntLoaded ? state.ant.orientation.index : 0,
            child: Image.asset('assets/ant.png', fit: BoxFit.contain),
          ),
        );
      },
    );
  }
}
