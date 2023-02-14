import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  final List<String> items;
  final int currentStep;

  const HorizontalListView(
      {super.key, required this.items, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: index <= currentStep
              ? () => debugPrint('click no item de índice $index')
              : null,
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: Sizes.p8),
            padding: const EdgeInsets.all(Sizes.p4),
            decoration: BoxDecoration(
              border: Border.all(
                color: index <= currentStep
                    ? CustomColors.darkGreen
                    : CustomColors.darkerGrey,
              ),
              borderRadius: BorderRadius.circular(25),
              color: index == currentStep
                  ? CustomColors.lightGreen.withAlpha(30)
                  : index < currentStep
                      ? CustomColors.gray
                      : CustomColors.darkGrey,
            ),
            child: Text(
              items[index],
              style: TextStyle(
                color: index <= currentStep
                    ? CustomColors.darkGreen
                    : CustomColors.darkerGrey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
