import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class RegisterModal extends StatelessWidget {
  final EdgeInsetsGeometry contentPadding;
  final Color backgroundColor;
  final String title;
  final double textFormFieldHeight;
  final VoidCallback onSave;

  const RegisterModal({
    super.key,
    required this.title,
    required this.onSave,
    this.contentPadding = const EdgeInsets.fromLTRB(
      Sizes.p12,
      Sizes.p20,
      Sizes.p12,
      Sizes.p4,
    ),
    this.backgroundColor = CustomColors.gray,
    this.textFormFieldHeight = 40,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: contentPadding,
      backgroundColor: backgroundColor,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: CustomColors.darkGreen,
        ),
      ),
      content: SizedBox(
        height: textFormFieldHeight,
        child: TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            hintText: 'Nome',
            hintStyle: const TextStyle(
              color: Colors.black54,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          style: ElevatedButton.styleFrom(
            backgroundColor: CustomColors.darkGreen,
          ),
          child: const Text('Voltar'),
        ),
        ElevatedButton(
          onPressed: onSave,
          style: ElevatedButton.styleFrom(
            backgroundColor: CustomColors.yellow,
            foregroundColor: CustomColors.darkGreen,
          ),
          child: const Text('Salvar'),
        ),
      ],
    );
  }
}
