import 'package:langton_ant/domain/entities/ant.dart' show Ant;

sealed class AntState {}

class AntInitial extends AntState {}

class AntLoaded extends AntState {
  final Ant ant;
  AntLoaded(this.ant);
}
