import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:eldorado/src/features/observation/presentation/list_observations/widgets/title_actions_dialog.dart';
import 'package:flutter/material.dart';

class ObservationItemActions extends StatelessWidget {
  final int index;
  const ObservationItemActions({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: CustomColors.darkGreen,
              width: 1,
            ),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            alignment: Alignment.topCenter,
            color: CustomColors.darkGreen,
            onPressed: () => showDialog(
              context: context,
              builder: (_) => TitleActionsDialog(
                dialogTitle: 'Recusar observação?',
                leadingButtonTitle: 'Voltar',
                leadingButtonOnPressed: () => Navigator.of(context).pop(),
                trailingButtonTitle: 'Recusar',
                trailingButtonOnPressed: () =>
                    debugPrint('clicked on reject observation'),
              ),
            ),
            icon: const Icon(Icons.close),
            iconSize: 25,
          ),
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: CustomColors.darkGreen,
              width: 1,
            ),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            color: CustomColors.darkGreen,
            onPressed: () => showDialog(
              context: context,
              builder: (_) => TitleActionsDialog(
                dialogTitle: 'Aprovar observação?',
                leadingButtonTitle: 'Voltar',
                leadingButtonOnPressed: () => Navigator.of(context).pop(),
                trailingButtonTitle: 'Aprovar',
                trailingButtonOnPressed: () =>
                    debugPrint('clicked on approve observation'),
              ),
            ),
            icon: const Icon(Icons.check),
          ),
        ),
      ],
    );
  }
}
