import 'package:eldorado/src/common/custom_nav_bar.dart';
import 'package:eldorado/src/common/default_background.dart';
import 'package:eldorado/src/common/elevated_icon_button.dart';
import 'package:eldorado/src/common/header.dart';
import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:eldorado/src/features/observation/list_observations/widgets/observations_list.dart';
import 'package:flutter/material.dart';

// TODO: Define Observation Object

class ListObservationsScreen extends StatelessWidget {
  const ListObservationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            DefaultBackground(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .15,
                ),
                Header(
                  title: 'Observações',
                  width: MediaQuery.of(context).size.width * .85,
                ),
                gapH12,
                const ObservationsList(),
                gapH8,
                // TODO: Should modularize the contents below into a widget??
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .05,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 45,
                          child: ElevatedButton(
                            onPressed: () =>
                                debugPrint('clicked on return button'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColors.darkGreen,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            child: const Text('Voltar'),
                          ),
                        ),
                        const Spacer(
                          flex: 10,
                        ),
                        Expanded(
                          flex: 45,
                          child: ElevatedIconButton(
                            onPressed: () => Navigator.of(context)
                                .pushNamed('/observation/add'),
                            backgroundColor: CustomColors.yellow,
                            foregroundColor: CustomColors.darkGreen,
                            fontSize: 20,
                            icon: Icons.add,
                            title: 'Adicionar',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: const CustomNavBar(
          current: 3,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.print), label: 'Exportar PDF'),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_copy), label: 'Indicar auditoria'),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_open), label: 'Revalidação'),
            BottomNavigationBarItem(
                icon: Icon(Icons.warning_amber_rounded), label: 'Observações'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_outlined),
                label: 'Envolvidos na Atividade'),
          ],
          screenNames: [
            '/base',
            '/login',
            '/listing',
            '/observation/add',
            '/register_epc',
          ],
        ),
      ),
    );
  }
}
