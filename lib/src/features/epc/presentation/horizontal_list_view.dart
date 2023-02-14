import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  final List<String> items;

  const HorizontalListView({
    super.key,
    required this.items,
  });

  // TODO: Implement selection logic and state management

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        // TODO: create widget to pass as the itemBuilder and improve UI to look like prototype
        itemBuilder: (context, index) => GestureDetector(
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: Sizes.p8),
            padding: const EdgeInsets.all(Sizes.p4),
            decoration: BoxDecoration(
              border: Border.all(color: CustomColors.darkerGrey),
              borderRadius: BorderRadius.circular(25),
              color: CustomColors.darkGrey,
            ),
            child: Text(
              items[index],
              style: const TextStyle(
                color: CustomColors.darkerGrey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
