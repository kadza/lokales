import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';
import '../details_card.dart';

class DescriptionCardView extends StatelessWidget {
  final String description;

  DescriptionCardView({
    Key key,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsCard(
      title: AppLocalizations.of(context).description,
      child: SingleChildScrollView(
        child: Text(
          AppLocalizations.of(context).spotDescription(description),
        ),
      ),
    );
  }
}
