import 'package:flutter/material.dart';
import 'package:langton_ant/domain/entities/ant.dart';

class AntComponent extends StatefulWidget {
  const AntComponent({super.key});

  @override
  State<AntComponent> createState() => AntComponentState();
}

class AntComponentState extends State<AntComponent> {
  Ant ant = const Ant();
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/ant.png', fit: BoxFit.fill);
  }
}
