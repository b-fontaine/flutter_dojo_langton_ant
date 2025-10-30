import 'package:flutter/material.dart';
import 'package:langton_ant/domain/entities/grid.dart';

class Cell extends StatelessWidget {
  final GridCell cell;
  final Widget? child;
  const Cell({super.key, required this.cell, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        color: switch (cell.color) {
          GridCellColor.white => Colors.white,
          GridCellColor.black => Colors.black,
        },
      ),
      child: child,
    );
  }
}
