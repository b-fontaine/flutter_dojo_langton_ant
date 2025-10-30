import 'package:injectable/injectable.dart';
import 'package:langton_ant/domain/usecases/get_ant.dart';

import '../../domain/entities/ant.dart';

@singleton
class AntInteractor {
  final GetAnt getAnt;

  AntInteractor(this.getAnt);

  Stream<Ant> get stream => getAnt.stream;
}
