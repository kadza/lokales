import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../l10n/app_localization.dart';
import 'details_card.dart';

class DescriptionCard extends StatelessWidget {
  final String description;

  DescriptionCard({
    Key key,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new DetailsCard(
      title: AppLocalizations.of(context).description,
      child: new SingleChildScrollView(child: new Text(description))
    );
  }
}
