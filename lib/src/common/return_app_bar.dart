import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class ReturnAppBar extends StatelessWidget {
  const ReturnAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
          color: CustomColors.yellow,
          iconSize: 30,
        ),
        IconButton(
          onPressed: () => debugPrint('clicked on the three dots'),
          icon: const Icon(Icons.more_vert),
          color: CustomColors.yellow,
          iconSize: 30,
        ),
      ],
    );
  }
}
