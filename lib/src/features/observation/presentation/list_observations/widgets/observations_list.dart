import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:eldorado/src/features/observation/presentation/list_observations/widgets/observation_item_actions.dart';
import 'package:eldorado/src/features/observation/presentation/list_observations/widgets/observation_item_body.dart';
import 'package:eldorado/src/features/observation/presentation/list_observations/widgets/observation_item_header.dart';
import 'package:flutter/material.dart';

class ObservationsList extends StatelessWidget {
  const ObservationsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                const ObservationItemHeader(),
                const Divider(
                  thickness: 1,
                  color: CustomColors.darkGreen,
                ),
                const ObservationItemBody(),
                gapH8,
                ObservationItemActions(index: index),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
