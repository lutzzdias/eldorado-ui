import 'package:eldorado/src/base/base_screen.dart';
import 'package:eldorado/src/common/add_button.dart';
import 'package:eldorado/src/common/drawer/custom_drawer.dart';
import 'package:eldorado/src/common/filter_button.dart';
import 'package:eldorado/src/common/screen_header.dart';
import 'package:eldorado/src/common/search_field.dart';
import 'package:eldorado/src/constants/app_sizes.dart';
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
                const ScreenHeader(title: 'Lista de APR\'s'),
                gapH12,
                Row(
                  children: [
                    const Expanded(
                      child: SearchField(
                        hintText: 'Buscar APR',
                      ),
                    ),
                    gapW12,
                    FilterButton(
                      text: 'Filtros',
                      icon: Icons.menu,
                      onPressed: () => showDialog(
                        context: context,
                        builder: (_) => const AlertDialog(
                          title: Text('Modal Title'),
                          content: Text('Modal content'),
                        ),
                      ),
                    ),
                  ],
                ),
                gapH12,
                const CompaniesListView(),
                gapH12,
                AddButton(
                  title: 'Adicionar APR',
                  icon: Icons.add,
                  onPressed: () => debugPrint('APR adicionada'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
