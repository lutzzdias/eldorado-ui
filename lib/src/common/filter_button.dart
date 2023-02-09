import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final void Function()? onPressed;
  final double borderRadius;
  final String text;
  final IconData icon;

  const FilterButton({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
    this.borderRadius = 30,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black38,
        side: const BorderSide(
          color: Colors.black38,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Row(
        children: [
          Text(text),
          gapW4,
          Icon(icon),
        ],
      ),
    );
  }
}
