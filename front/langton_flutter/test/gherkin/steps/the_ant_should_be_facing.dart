import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/domain/entities/ant.dart';
import 'package:langton_ant/presentation/ant/ant_component.dart';

/// Usage: the ant should be facing {Orientation.north}
Future<void> theAntShouldBeFacing(WidgetTester tester, AntOrientation o) async {
  final ant = find.byType(AntComponent);
  final AntComponentState antState = tester.state(ant);

  expect(antState.ant.orientation, o);
}
