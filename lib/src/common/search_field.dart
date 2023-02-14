import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String hintText;
  final TextStyle hintStyle;
  final double height;
  final TextAlign textAlign;
  final IconData suffixIconData;
  final double borderRadius;

  const SearchField({
    super.key,
    required this.hintText,
    this.height = 35,
    this.textAlign = TextAlign.start,
    this.hintStyle = const TextStyle(color: Colors.black26, fontSize: 15),
    this.suffixIconData = Icons.search,
    this.borderRadius = 30,
  });

  // TODO: Implement search function / logic

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextField(
        textAlign: textAlign,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          suffixIcon: Icon(
            suffixIconData,
            color: Colors.black26,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: const BorderSide(
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
