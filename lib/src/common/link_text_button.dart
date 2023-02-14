import 'package:flutter/material.dart';

class LinkTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const LinkTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
        textStyle: const TextStyle(
          decoration: TextDecoration.underline,
        ),
        foregroundColor: Colors.white,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(text),
    );
  }
}
