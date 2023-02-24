import 'package:eldorado/src/common/custom_nav_bar.dart';
import 'package:eldorado/src/common/default_background.dart';
import 'package:eldorado/src/common/elevated_icon_button.dart';
import 'package:eldorado/src/common/header.dart';
import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:eldorado/src/features/observation/domain/observation.dart';
import 'package:eldorado/src/features/observation/presentation/list_observations/widgets/observations_list.dart';
import 'package:flutter/material.dart';

// TODO: Define Observation Object

class ListObservationsScreen extends StatelessWidget {
  ListObservationsScreen({super.key});

  List<Observation> observations = [
    Observation(
      requester: 'Julio César',
      date: DateTime(2023, 02, 17, 17, 53),
      content: 'Calmô gente, tem Julião pra todo mundo',
    ),
    Observation(
      requester: 'Thiago Lütz',
      date: DateTime(2023, 01, 15, 9, 5),
      content:
          'Bom dia apenas para aqueles que são merecedores de receber bom dia',
    ),
    Observation(
      requester: 'Víto Oliveira',
      date: DateTime(2023, 02, 14, 13, 15),
      content: 'Observação deveras inteligente feita por mim.',
    ),
    Observation(
      requester: 'Julio César',
      date: DateTime(2023, 02, 01, 18),
      content: 'Isso pode gerar algumas complicações...',
    ),
  ];

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
                ObservationsList(
                  observations: observations,
                ),
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
