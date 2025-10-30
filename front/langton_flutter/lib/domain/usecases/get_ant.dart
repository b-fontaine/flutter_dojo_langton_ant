import 'dart:async' show StreamController;

import 'package:injectable/injectable.dart' show singleton;
import 'package:rxdart/rxdart.dart';

import '../entities/ant.dart';

@singleton
class GetAnt {
  late final Stream<Ant> _stream;
  final StreamController<Ant> _controller = StreamController<Ant>();
  GetAnt() {
    _controller.add(Ant(orientation: AntOrientation.north));
    _stream = _controller.stream.asBroadcastStream().shareReplay(maxSize: 1);
  }
  Stream<Ant> get stream => _stream;
}
