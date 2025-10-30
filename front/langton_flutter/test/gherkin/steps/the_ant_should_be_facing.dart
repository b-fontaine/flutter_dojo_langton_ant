import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/domain/entities/ant.dart';
import 'package:langton_ant/presentation/ant/view/ant_component.dart';

/// Usage: the ant should be facing {Orientation.north}
Future<void> theAntShouldBeFacing(WidgetTester tester, AntOrientation o) async {
  final ant = find.byType(AntComponent);

  expect(ant, findsOneWidget);
  final antImage = find.descendant(of: ant, matching: find.byType(RotatedBox));
  expect(antImage, findsOneWidget);

  final image = tester.widget<RotatedBox>(antImage);
  expect(image.quarterTurns, equals(o.index));
}
