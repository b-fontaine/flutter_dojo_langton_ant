import 'package:flutter_test/flutter_test.dart';
import 'package:langton_ant/presentation/move/view/move_component.dart';

/// Usage: I move the ant forward
Future<void> iMoveTheAntForward(WidgetTester tester) async {
  final moveButton = find.byType(MoveComponent);
  expect(moveButton, findsOneWidget);
  await tester.tap(moveButton);
  await tester.pumpAndSettle();
}
