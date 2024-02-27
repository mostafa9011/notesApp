import 'package:flutter/material.dart';

class ColorPiker extends StatelessWidget {
  const ColorPiker({
    super.key,
    required this.selectedColor,
    required this.color,
  });

  final bool selectedColor;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return selectedColor
        ? CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: color,
          );
  }
}
