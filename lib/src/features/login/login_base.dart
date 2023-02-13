import 'package:eldorado/src/common/logo_background.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class LoginBase extends StatelessWidget {
  const LoginBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: CustomColors.darkGreen,
        ),
        const Opacity(
          opacity: .45,
          child: LogoBackground(),
        ),
      ],
    );
  }
}
