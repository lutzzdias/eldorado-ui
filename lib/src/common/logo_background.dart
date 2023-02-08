import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoBackground extends StatelessWidget {
  final Color? color;
  final AlignmentGeometry alignment;
  const LogoBackground({
    super.key,
    this.color,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SvgPicture.asset(
        'assets/logo_e.svg',
        fit: BoxFit.cover,
        alignment: alignment,
        colorFilter: color != null
            ? ColorFilter.mode(
                color!,
                BlendMode.srcOut,
              )
            : null,
      ),
    );
  }
}
