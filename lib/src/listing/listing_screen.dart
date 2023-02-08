import 'package:eldorado/src/base/base_screen.dart';
import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class ListingScreen extends StatelessWidget {
  const ListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // TODO: Fix drawer is behind components of current screen.
          BaseScreen(),
          Positioned(
            top: 125,
            left: 45,
            right: 45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: CustomColors.yellow,
                  ),
                  height: 50,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: Sizes.p16),
                  child: const Text(
                    'Lista de APR\'s',
                    style: TextStyle(
                      color: CustomColors.darkGreen,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Expanded(child: TextField()),
                    OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text('Filtros'),
                          Icon(Icons.list),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
