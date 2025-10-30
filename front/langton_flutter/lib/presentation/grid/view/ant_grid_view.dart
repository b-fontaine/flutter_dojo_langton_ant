import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langton_ant/presentation/ant/view/ant_component.dart';

import '../bloc/ant_grid_bloc.dart';
import '../bloc/ant_grid_event.dart';
import '../bloc/ant_grid_state.dart';
import 'components/cell.dart';

class AntGridView extends StatelessWidget {
  const AntGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AntGridBloc, AntGridState>(
      builder: (context, state) {
        if (state is AntGridInitial) {
          context.read<AntGridBloc>().add(AntGridInitiate());
        }
        if (state is AntGridLoaded) {
          return Expanded(
            child: Column(
              children: state.grid.rows
                  .map(
                    (row) => Expanded(
                      child: Row(
                        children: row.cells
                            .map(
                              (cell) => Expanded(
                                child: Cell(
                                  cell: cell,
                                  child:
                                      ((
                                            row.cells.indexOf(cell),
                                            state.grid.rows.indexOf(row),
                                          ) ==
                                          state.antPosition)
                                      ? AntComponent()
                                      : null,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  )
                  .toList(),
            ),
          );
        }

        return Expanded(
          child: Center(child: const CircularProgressIndicator()),
        );
      },
    );
  }
}
