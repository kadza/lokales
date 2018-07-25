import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../l10n/app_localization.dart';
import 'details_card.dart';

class WindDirectionCard extends StatelessWidget {
  final List<String> windDirections;

  WindDirectionCard({
    Key key,
    @required this.windDirections,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new DetailsCard(
      title: AppLocalizations.of(context).windDirections,
      child: new Text(windDirections.join(", ")),
    );
  }
}
