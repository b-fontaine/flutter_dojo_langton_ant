import '../../../domain/entities/grid.dart';

sealed class AntGridState {}

class AntGridInitial extends AntGridState {}

class AntGridLoaded extends AntGridState {
  final Grid grid;
  final (int, int) antPosition;
  AntGridLoaded(this.grid, this.antPosition);
}
