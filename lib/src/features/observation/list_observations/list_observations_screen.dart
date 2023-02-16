import 'package:eldorado/src/common/custom_nav_bar.dart';
import 'package:eldorado/src/common/default_background.dart';
import 'package:eldorado/src/common/elevated_icon_button.dart';
import 'package:eldorado/src/common/header.dart';
import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

// TODO: Define Observation Object
// TODO: Modularize this file into widgets

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
                SizedBox(
                  height: MediaQuery.of(context).size.height * .53,
                  width: MediaQuery.of(context).size.width * .85,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => Card(
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.p12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Solicitante:',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: CustomColors.darkGreen,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      'Vitor Oliveira Resende Brandao',
                                      style: TextStyle(
                                        color: CustomColors.darkGreen,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                gapW24,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Data:',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: CustomColors.darkGreen,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      '09/02/2023 às 9:42',
                                      style: TextStyle(
                                        color: CustomColors.darkGreen,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              color: CustomColors.darkGreen,
                            ),
                            const Text(
                              'Observação:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: CustomColors.darkGreen,
                                fontSize: 17,
                              ),
                            ),
                            gapH8,
                            TextFormField(
                              style: const TextStyle(
                                color: CustomColors.darkGreen,
                                fontSize: 14,
                              ),
                              minLines: 3,
                              readOnly: true,
                              enabled: false,
                              controller: TextEditingController(
                                text: 'Texto que virá no objeto observação',
                              ),
                              keyboardType: TextInputType.multiline,
                              maxLines: 6,
                              decoration: const InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: .75)),
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                            gapH8,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: CustomColors.darkGreen,
                                      width: 1,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    alignment: Alignment.topCenter,
                                    color: CustomColors.darkGreen,
                                    onPressed: () => debugPrint(
                                        'Clicked on reject observation $index'),
                                    icon: const Icon(Icons.close),
                                    iconSize: 25,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: CustomColors.darkGreen,
                                      width: 1,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    color: CustomColors.darkGreen,
                                    onPressed: () => debugPrint(
                                        'Clicked on approve observation $index'),
                                    icon: const Icon(Icons.check),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                gapH8,
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
