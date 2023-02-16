import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final List<String> screenNames;
  final int current;

  const CustomNavBar({
    super.key,
    required this.items,
    required this.screenNames,
    this.current = 0,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: current,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.of(context).pushNamed(screenNames[index]);
            break;
          case 1:
            Navigator.of(context).pushNamed(screenNames[index]);
            break;
          case 2:
            Navigator.of(context).pushNamed(screenNames[index]);
            break;
          case 3:
            Navigator.of(context).pushNamed(screenNames[index]);
            break;
          case 4:
            Navigator.of(context).pushNamed(screenNames[index]);
            break;
          default:
            break;
        }
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: CustomColors.lightYellow,
      unselectedLabelStyle: const TextStyle(color: CustomColors.darkGreen),
      unselectedItemColor: CustomColors.darkGreen.withAlpha(200),
      selectedLabelStyle: const TextStyle(
          color: CustomColors.darkGreen, fontWeight: FontWeight.bold),
      selectedItemColor: CustomColors.darkGreen,
      items: items,
    );
  }
}
