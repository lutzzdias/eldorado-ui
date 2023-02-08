import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onPressed;

  const DrawerTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.p8),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            width: 1.5,
            color: CustomColors.darkGreen,
          ),
          foregroundColor: CustomColors.darkGreen,
          textStyle: const TextStyle(fontSize: 20),
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.p4,
            horizontal: Sizes.p8,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: CustomColors.darkGreen,
              size: 35,
            ),
            gapW4,
            Text(title),
          ],
        ),
      ),
    );
  }
}
