import 'package:eldorado/src/common/elevated_icon_button.dart';
import 'package:eldorado/src/common/default_background.dart';
import 'package:eldorado/src/common/multiple_selection_list_view.dart';
import 'package:eldorado/src/common/register_modal.dart';
import 'package:eldorado/src/common/return_app_bar.dart';
import 'package:eldorado/src/common/header.dart';
import 'package:eldorado/src/common/search_field.dart';
import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:eldorado/src/features/epc/domain/list_option.dart';
import 'package:eldorado/src/features/epc/presentation/horizontal_list_view.dart';
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

  final List<ListOption> epcs = [
    const ListOption(id: '0', name: 'Dispositivos de Bloqueio'),
    const ListOption(id: '1', name: 'Cone de Sinalização'),
    const ListOption(id: '2', name: 'Extintor'),
    const ListOption(id: '3', name: 'Trava Queda'),
    const ListOption(id: '4', name: 'Biombo'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            DefaultBackground(
              hasDrawer: false,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const ReturnAppBar(),
                    gapH48,
                    Header(
                      title: 'EPC\'s Aplicáveis',
                      width: MediaQuery.of(context).size.width * .85,
                    ),
                    gapH12,
                    HorizontalListView(
                      items: steps,
                    ),
                    gapH16,
                    Row(
                      children: [
                        const Expanded(
                          flex: 55,
                          child: SearchField(hintText: 'Buscar EPCs'),
                        ),
                        gapW8,
                        Expanded(
                          flex: 45,
                          child: ElevatedIconButton(
                            title: 'Cadastrar',
                            icon: Icons.add,
                            backgroundColor: CustomColors.darkGreen,
                            foregroundColor: Colors.white,
                            onPressed: () => showDialog(
                              context: context,
                              builder: (_) => RegisterModal(
                                title: 'Cadastrar EPC',
                                onSave: () =>
                                    debugPrint('clicked on save button'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    gapH16,
                    MultipleSelectionListView(items: epcs),
                    gapH16,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 45,
                          child: ElevatedButton(
                            onPressed: () =>
                                debugPrint('clicked on return button'),
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
                            onPressed: () =>
                                debugPrint('clicked on next button'),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
