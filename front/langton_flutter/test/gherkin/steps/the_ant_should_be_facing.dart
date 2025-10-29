import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/app.dart';
import 'package:langton_ant/presentation/grid/ant.dart';

/// Usage: the ant should be facing {Orientation.north}
Future<void> theAntShouldBeFacing(WidgetTester tester, AntOrientation o) async {
  expect(gridKey.currentState?.ant.orientation ?? AntOrientation.south, o);
}
