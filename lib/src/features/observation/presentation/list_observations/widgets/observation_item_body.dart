import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class ObservationItemBody extends StatelessWidget {
  final String text;

  const ObservationItemBody({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Observação:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: CustomColors.darkGreen,
            fontSize: 17,
          ),
        ),
        gapH8,
        TextFormField(
          style: const TextStyle(
            color: CustomColors.darkGreen,
            fontSize: 14,
          ),
          minLines: 3,
          readOnly: true,
          enabled: false,
          controller: TextEditingController(
            text: text,
          ),
          keyboardType: TextInputType.multiline,
          maxLines: 6,
          decoration: const InputDecoration(
            disabledBorder:
                OutlineInputBorder(borderSide: BorderSide(width: .75)),
            isDense: true,
            contentPadding: EdgeInsets.all(8),
          ),
        ),
      ],
    );
  }
}
