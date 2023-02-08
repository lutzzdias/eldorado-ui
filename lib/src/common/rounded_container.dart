import 'dart:math' as math;

import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Color color;
  final double height;
  final double width;

  const RoundedContainer({
    super.key,
    this.color = CustomColors.darkGreen,
    this.height = 300,
    this.width = 1000,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: Painter(
        color: color,
        height: height,
        width: width,
        offset: Offset(MediaQuery.of(context).size.width / 2, 0),
      ),
    );
  }
}

class Painter extends CustomPainter {
  final Color color;
  final double height;
  final double width;
  final Offset offset;

  Painter({
    required this.color,
    required this.height,
    required this.width,
    required this.offset,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    canvas.drawArc(
      Rect.fromCenter(
        center: offset,
        height: height,
        width: width,
      ),
      math.pi,
      -math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
