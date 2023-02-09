import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:flutter/material.dart';

// TODO: Make this widget more reusable, define how data will be received and treated
class CompaniesListView extends StatelessWidget {
  const CompaniesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            gapW20,
            Text(
              'Contratada',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            gapW32,
            Text(
              'Subcontratada',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: 25,
            itemBuilder: (context, index) => Column(
              children: [
                const Divider(thickness: 1.5),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: Sizes.p4,
                    horizontal: Sizes.p4,
                  ),
                  child: InkWell(
                    onTap: () => print('hello from tile $index'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'EMPRESA A',
                              style: TextStyle(
                                color: CustomColors.darkGreen,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '55.872.172/0001-47',
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'EMPRESA W',
                              style: TextStyle(
                                color: CustomColors.darkGreen,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '55.872.172/0001-47',
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        RotatedBox(
                          quarterTurns: 2,
                          child: Icon(
                            Icons.info_outline,
                            color: index % 2 == 0
                                ? Colors.transparent
                                : Colors.red,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right,
                          color: CustomColors.darkGreen,
                        )
                      ],
                    ),
                  ),
                ),
                if (index == 24) const Divider(thickness: 1.5),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
