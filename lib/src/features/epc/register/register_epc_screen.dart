import 'package:eldorado/src/common/add_button.dart';
import 'package:eldorado/src/common/base.dart';
import 'package:eldorado/src/common/screen_header.dart';
import 'package:eldorado/src/common/search_field.dart';
import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class RegisterEpcScreen extends StatelessWidget {
  RegisterEpcScreen({super.key});

  final List<String> steps = [
    'Passo 1',
    'EPC\'s aplicáveis',
    'Ferramentas dedicadas',
    'Another step',
    'Last step',
  ];

  final List<String> epcs = [
    'Dispositivos de Bloqueio',
    'Cone de Sinalização',
    'Extintor',
    'Trava Queda',
    'Biombo',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Base(
              hasDrawer: false,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.arrow_back),
                        color: CustomColors.yellow,
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () =>
                            debugPrint('clicked on the three dots'),
                        icon: const Icon(Icons.more_vert),
                        color: CustomColors.yellow,
                        iconSize: 30,
                      ),
                    ],
                  ),
                  gapH48,
                  ScreenHeader(
                    title: 'EPC\'s Aplicáveis',
                    width: MediaQuery.of(context).size.width * .85,
                  ),
                  gapH12,
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: steps.length,
                      itemBuilder: (context, index) => Container(
                        alignment: Alignment.center,
                        margin:
                            const EdgeInsets.symmetric(horizontal: Sizes.p4),
                        padding: const EdgeInsets.all(Sizes.p4),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black26,
                        ),
                        child: Text(steps[index]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Sizes.p12,
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 55,
                          child: SearchField(hintText: 'Buscar EPCs'),
                        ),
                        gapW8,
                        Expanded(
                          flex: 45,
                          child: AddButton(
                            title: 'Cadastrar',
                            icon: Icons.add,
                            backgroundColor: CustomColors.darkGreen,
                            foregroundColor: Colors.white,
                            onPressed: () =>
                                debugPrint('Clicked on register button'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: epcs.length,
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: Sizes.p12),
                                  child: Text(
                                    epcs[index],
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 45,
                        child: ElevatedButton(
                          onPressed: () => {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.darkGreen,
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
                          onPressed: () => {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.yellow,
                            foregroundColor: CustomColors.darkGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text('Próximo'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
