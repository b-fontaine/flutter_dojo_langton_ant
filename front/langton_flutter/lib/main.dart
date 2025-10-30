import 'package:flutter/material.dart';
import 'package:langton_ant/core/di/injection.dart';

import 'app.dart';

void main() {
  configureDependencies();
  runApp(const App());
}
