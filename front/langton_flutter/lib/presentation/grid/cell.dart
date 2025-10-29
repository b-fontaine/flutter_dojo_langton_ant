import 'package:flutter/material.dart';

class Cell extends StatelessWidget {
  final bool white;
  final int x;
  final int y;
  final Widget? child;
  const Cell({
    super.key,
    this.white = true,
    required this.x,
    required this.y,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        color: white ? Colors.white : Colors.grey,
      ),
      child: child,
    );
  }
}
