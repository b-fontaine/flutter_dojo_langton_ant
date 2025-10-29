import 'package:flutter/material.dart';
import 'package:langton_ant/presentation/grid/ant_widget.dart';

import 'ant.dart';
import 'cell.dart';

class AntGrid extends StatefulWidget {
  const AntGrid({super.key});

  @override
  State<AntGrid> createState() => AntGridState();
}

class AntGridState extends State<AntGrid> {
  final int columns = 21;
  final int rows = 21;
  final List<List<bool>> grid = List.generate(
    21,
    (index) => List.filled(21, true),
  );
  final Ant ant = const Ant(x: 10, y: 10);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: List.generate(
          rows,
          (xi) => Expanded(
            child: Row(
              children: List.generate(
                columns,
                (yi) => Expanded(
                  child: Cell(
                    white: grid[xi][yi],
                    x: xi,
                    y: yi,
                    child: (xi == ant.x && yi == ant.y)
                        ? ant.build(context)
                        : null,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
