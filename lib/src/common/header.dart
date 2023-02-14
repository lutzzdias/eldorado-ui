
import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final double width;
  final double fontSize;
  final double borderRadius;

  const Header({
    super.key,
    required this.title,
    this.backgroundColor = CustomColors.yellow,
    this.textColor = CustomColors.darkGreen,
    this.height = 50,
    this.width = 300,
    this.fontSize = 20,
    this.borderRadius = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
      ),
      width: width,
      height: height,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: Sizes.p16),
      child: Text(
        title,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
