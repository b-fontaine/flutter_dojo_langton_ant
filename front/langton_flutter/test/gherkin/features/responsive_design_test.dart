// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './../steps/the_app_is_running.dart';
import './../steps/the_screen_size_is_x.dart';
import './../steps/the_grid_should_have_height.dart';
import './../steps/the_grid_should_have_width.dart';

void main() {
  group('''Responsive Design''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await theAppIsRunning(tester);
    }

    testWidgets('''Outline: Grid is square on all screens (300, 600, 300)''',
        (tester) async {
      await bddSetUp(tester);
      await theScreenSizeIsX(tester, 300, 600);
      await theGridShouldHaveHeight(tester, 300);
      await theGridShouldHaveWidth(tester, 300);
    });
    testWidgets('''Outline: Grid is square on all screens (600, 300, 244)''',
        (tester) async {
      await bddSetUp(tester);
      await theScreenSizeIsX(tester, 600, 300);
      await theGridShouldHaveHeight(tester, 244);
      await theGridShouldHaveWidth(tester, 244);
    });
  });
}
