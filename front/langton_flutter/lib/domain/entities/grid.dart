import 'package:freezed_annotation/freezed_annotation.dart';

part 'grid.freezed.dart';

@freezed
abstract class Grid with _$Grid {
  const factory Grid({required List<GridRow> rows}) = _Grid;
}

@freezed
abstract class GridRow with _$GridRow {
  const factory GridRow({required List<GridCell> cells}) = _GridRow;
}

@freezed
abstract class GridCell with _$GridCell {
  const factory GridCell({required GridCellColor color}) = _GridCell;
}

enum GridCellColor { white, black }
