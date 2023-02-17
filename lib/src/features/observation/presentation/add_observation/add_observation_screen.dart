import 'package:eldorado/src/common/custom_nav_bar.dart';
import 'package:eldorado/src/common/default_background.dart';
import 'package:eldorado/src/common/header.dart';
import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class AddObservationScreen extends StatelessWidget {
  const AddObservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Stack(
          children: [
            DefaultBackground(),
            Positioned.fill(
              top: 105,
              left: 10,
              right: 10,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Header(
                      title: 'Nova Observação',
                      width: MediaQuery.of(context).size.width * .85,
                    ),
                    gapH12,
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.p12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Observação:',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: CustomColors.darkGreen,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            gapH8,
                            TextFormField(
                              minLines: 15,
                              keyboardType: TextInputType.multiline,
                              maxLines: 15,
                              decoration: const InputDecoration(
                                hintText: 'Digite aqui',
                                border: OutlineInputBorder(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 45,
                          child: ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(),
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
                          child: ElevatedButton(
                            onPressed: () =>
                                debugPrint('clicked on next button'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColors.yellow,
                              foregroundColor: CustomColors.darkGreen,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            child: const Text('Salvar'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
