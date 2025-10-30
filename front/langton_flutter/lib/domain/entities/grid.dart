class Grid {
  final List<GridRow> rows;

  const Grid({required this.rows});
}

class GridRow {
  final List<GridCell> cells;

  const GridRow({required this.cells});
}

class GridCell {
  final GridCellColor color;

  const GridCell({required this.color});
}

enum GridCellColor { white, black }
