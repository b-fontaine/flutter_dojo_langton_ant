import 'package:flutter/material.dart';
import 'package:langton_ant/domain/entities/grid.dart';
import 'package:langton_ant/presentation/ant/ant_component.dart';

import 'cell.dart';

class AntGrid extends StatefulWidget {
  const AntGrid({super.key});

  @override
  State<AntGrid> createState() => AntGridState();
}

Grid initialGrid() => Grid(
  rows: List.generate(
    21,
    (index) => GridRow(
      cells: List.generate(21, (index) => GridCell(color: GridCellColor.white)),
    ),
  ),
);

class AntGridState extends State<AntGrid> {
  Grid grid = initialGrid();
  var antPosition = (10, 10);

  @override
  void initState() {
    super.initState();
  }

  void antMove(int x, int y) {
    setState(() {
      antPosition = (x, y);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: grid.rows
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
                                      grid.rows.indexOf(row),
                                    ) ==
                                    antPosition)
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
}
