import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class ObservationItemHeader extends StatelessWidget {
  final String requester;
  final DateTime date;

  const ObservationItemHeader({
    super.key,
    required this.requester,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Solicitante:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: CustomColors.darkGreen,
                fontSize: 17,
              ),
            ),
            Text(
              requester,
              style: const TextStyle(
                color: CustomColors.darkGreen,
                fontSize: 10,
              ),
            ),
          ],
        ),
        gapW24,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Data:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: CustomColors.darkGreen,
                fontSize: 17,
              ),
            ),
            Text(
              date.toString(),
              style: const TextStyle(
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
