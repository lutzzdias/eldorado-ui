import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class MultipleSelectionListView extends StatelessWidget {
  final List<String> items;
  final double percentageHeight;

  const MultipleSelectionListView({
    super.key,
    required this.items,
    this.percentageHeight = .45,
  });

  // TODO: Implement selection logic and state management of selection

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * percentageHeight,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => SizedBox(
          height: 60,
          child: Card(
            child: Row(
              children: [
                const Expanded(
                  flex: 15,
                  child: Icon(Icons.check),
                ),
                const VerticalDivider(
                  color: Colors.black12,
                  thickness: 2,
                ),
                Expanded(
                  flex: 85,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
                    child: Text(
                      items[index],
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
