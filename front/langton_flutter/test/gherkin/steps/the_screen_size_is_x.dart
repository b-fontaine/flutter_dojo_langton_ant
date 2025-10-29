import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';

/// Usage: the screen size is <width> x <height>
Future<void> theScreenSizeIsX(
  WidgetTester tester,
  double width,
  double height,
) async {
  tester.view.physicalSize = Size(width, height);
  tester.view.devicePixelRatio = 1;
  tester.view.platformDispatcher.textScaleFactorTestValue = 0.5;
  await tester.pumpAndSettle(const Duration(milliseconds: 500));
}
