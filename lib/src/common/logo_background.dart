import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoBackground extends StatelessWidget {
  final Color color;
  const LogoBackground({
    super.key,
    this.color = Colors.black12,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SvgPicture.asset(
        'assets/logo_e.svg',
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.srcOut,
        ),
      ),
    );
  }
}
