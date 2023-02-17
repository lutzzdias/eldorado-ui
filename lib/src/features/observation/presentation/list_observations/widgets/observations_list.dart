import 'package:eldorado/src/constants/app_sizes.dart';
import 'package:eldorado/src/constants/custom_colors.dart';
import 'package:eldorado/src/features/observation/domain/observation.dart';
import 'package:eldorado/src/features/observation/presentation/list_observations/widgets/observation_item_actions.dart';
import 'package:eldorado/src/features/observation/presentation/list_observations/widgets/observation_item_body.dart';
import 'package:eldorado/src/features/observation/presentation/list_observations/widgets/observation_item_header.dart';
import 'package:flutter/material.dart';

class ObservationsList extends StatelessWidget {
  final List<Observation> observations;
  const ObservationsList({
    super.key,
    required this.observations,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .53,
      width: MediaQuery.of(context).size.width * .85,
      child: ListView.builder(
          itemCount: observations.length,
          itemBuilder: (context, index) {
            final Observation observation = observations[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(Sizes.p12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ObservationItemHeader(
                      requester: observation.requester,
                      date: observation.date,
                    ),
                    const Divider(
                      thickness: 1,
                      color: CustomColors.darkGreen,
                    ),
                    ObservationItemBody(text: observation.content),
                    gapH8,
                    ObservationItemActions(index: index),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
