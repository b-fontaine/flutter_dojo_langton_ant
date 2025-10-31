import 'dart:async' show StreamController;

import 'package:injectable/injectable.dart' show singleton;
import 'package:rxdart/rxdart.dart';

import '../entities/grid.dart';

@singleton
class StreamGrid {
  late final Stream<Grid> _stream;
  final StreamController<Grid> _controller = StreamController<Grid>();
  StreamGrid() {
    final grid = Grid(
      rows: List.generate(
        21,
        (index) => GridRow(
          cells: List.generate(
            21,
            (index) => GridCell(color: GridCellColor.white),
          ),
        ),
      ),
    );
    _controller.add(grid);
    _stream = _controller.stream.asBroadcastStream().shareReplay(maxSize: 1);
  }

  Stream<Grid> get stream => _stream;

  void call(Grid grid) {
    _controller.add(grid);
  }
}
