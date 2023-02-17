import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class TitleActionsDialog extends StatelessWidget {
  final String dialogTitle;
  final String leadingButtonTitle;
  final String trailingButtonTitle;

  final VoidCallback leadingButtonOnPressed;
  final VoidCallback trailingButtonOnPressed;

  const TitleActionsDialog({
    super.key,
    required this.dialogTitle,
    required this.leadingButtonTitle,
    required this.trailingButtonTitle,
    required this.leadingButtonOnPressed,
    required this.trailingButtonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: CustomColors.gray,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Text(
        dialogTitle,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: CustomColors.darkGreen,
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        ElevatedButton(
          onPressed: leadingButtonOnPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: CustomColors.darkGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          child: Text(leadingButtonTitle),
        ),
        ElevatedButton(
          onPressed: trailingButtonOnPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: CustomColors.yellow,
            foregroundColor: CustomColors.darkGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          child: Text(trailingButtonTitle),
        ),
      ],
    );
  }
}
