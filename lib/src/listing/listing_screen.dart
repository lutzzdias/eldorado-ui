import 'package:eldorado/src/base/base_screen.dart';
import 'package:eldorado/src/common/drawer/custom_drawer.dart';
import 'package:eldorado/src/common/screen_title.dart';
import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:eldorado/src/listing/companies_listview.dart';
import 'package:flutter/material.dart';

class ListingScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  ListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      body: Stack(
        children: [
          BaseScreen(
            openDrawer: () {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          Positioned(
            top: 125,
            left: 45,
            right: 45,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const ScreenTitle(title: 'Lista de APR\'s'),
                gapH12,
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 35,
                        child: TextField(
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            hintText: 'Buscar APR',
                            hintStyle: const TextStyle(color: Colors.black26),
                            suffixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    gapW12,
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black38,
                        side: const BorderSide(
                          color: Colors.black38,
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        children: const [
                          Text('Filtros'),
                          gapW4,
                          Icon(Icons.list),
                        ],
                      ),
                    ),
                  ],
                ),
                const CompaniesListView(),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                  ),
                  label: const Text('Adicionar APR'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.darkGreen,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(Sizes.p12),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
