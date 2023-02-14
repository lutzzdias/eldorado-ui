import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:eldorado/src/features/epc/domain/list_option.dart';
import 'package:flutter/material.dart';

class MultipleSelectionListView extends StatefulWidget {
  final List<ListOption> items;
  final double percentageHeight;

  const MultipleSelectionListView({
    super.key,
    required this.items,
    this.percentageHeight = .45,
  });

  @override
  State<MultipleSelectionListView> createState() =>
      _MultipleSelectionListViewState();
}

class _MultipleSelectionListViewState extends State<MultipleSelectionListView> {
  List<ListOption> selected = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * widget.percentageHeight,
      child: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (selected.any(
              (element) => element.id == widget.items[index].id,
            )) {
              setState(() {
                selected.removeWhere(
                    (element) => element.id == widget.items[index].id);
              });
            } else {
              setState(() {
                selected.add(widget.items[index]);
              });
            }
          },
          child: SizedBox(
            height: 60,
            child: Card(
              color: selected.any((item) => item.id == widget.items[index].id)
                  ? CustomColors.lightGreen
                  : Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 15,
                    child: Icon(
                      Icons.check,
                      color: selected
                              .any((item) => item.id == widget.items[index].id)
                          ? CustomColors.darkGreen
                          : Colors.transparent,
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.black12,
                    thickness: 2,
                  ),
                  Expanded(
                    flex: 85,
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: Sizes.p12),
                      child: Text(
                        widget.items[index].name,
                        style: TextStyle(
                          color: selected.any(
                                  (item) => item.id == widget.items[index].id)
                              ? CustomColors.darkGreen
                              : Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
