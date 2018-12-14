import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './description_card.view_model.dart';
import '../../l10n/app_localization.dart';
import '../details_card.dart';

class DescriptionCardView extends StatelessWidget {
  final DescriptionCardViewModel viewModel;

  DescriptionCardView({
    Key key,
    @required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new DetailsCard(
      title: AppLocalizations.of(context).description,
      child: new SingleChildScrollView(
        child: new Text(
          AppLocalizations.of(context).spotDescription(viewModel.description)
        )
      )
    );
  }
}
