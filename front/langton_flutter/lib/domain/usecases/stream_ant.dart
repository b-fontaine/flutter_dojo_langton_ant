import 'dart:async' show StreamController;

import 'package:injectable/injectable.dart' show singleton;
import 'package:rxdart/rxdart.dart';

import '../entities/ant.dart';

@singleton
class StreamAnt {
  late final Stream<Ant> _stream;
  final StreamController<Ant> _controller = StreamController<Ant>();
  StreamAnt() {
    _controller.add(Ant(orientation: AntOrientation.north, position: (10, 10)));
    _stream = _controller.stream.asBroadcastStream().shareReplay(maxSize: 1);
    _controller.add(Ant(orientation: AntOrientation.north, position: (10, 10)));
  }

  Stream<Ant> get stream => _stream;

  void call(Ant ant) => _controller.add(ant);
}
