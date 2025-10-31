import 'package:injectable/injectable.dart';
import 'package:langton_ant/domain/usecases/stream_ant.dart';

import '../../domain/entities/ant.dart';

@singleton
class AntInteractor {
  final StreamAnt getAnt;

  AntInteractor(this.getAnt);

  Stream<Ant> get stream => getAnt.stream;
}
