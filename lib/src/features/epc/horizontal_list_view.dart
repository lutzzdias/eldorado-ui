import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  final List<String> items;

  const HorizontalListView({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        // TODO: create widget to pass as the itemBuilder
        itemBuilder: (context, index) => Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: Sizes.p8),
          padding: const EdgeInsets.all(Sizes.p4),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(25),
            color: Colors.black26,
          ),
          child: Text(items[index]),
        ),
      ),
    );
  }
}
