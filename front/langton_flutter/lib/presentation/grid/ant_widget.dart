import 'package:flutter/material.dart';

import 'ant.dart';

extension AntWidget on Ant {
  Widget build(BuildContext context) {
    return Image.asset('assets/ant.png', fit: BoxFit.fill);
  }
}
