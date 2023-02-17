import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class ObservationItemHeader extends StatelessWidget {
  const ObservationItemHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Solicitante:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: CustomColors.darkGreen,
                fontSize: 17,
              ),
            ),
            Text(
              'Vitor Oliveira Resende Brandao',
              style: TextStyle(
                color: CustomColors.darkGreen,
                fontSize: 10,
              ),
            ),
          ],
        ),
        gapW24,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Data:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: CustomColors.darkGreen,
                fontSize: 17,
              ),
            ),
            Text(
              '09/02/2023 às 9:42',
              style: TextStyle(
                color: CustomColors.darkGreen,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
