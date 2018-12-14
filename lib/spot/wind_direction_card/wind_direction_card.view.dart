import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';
import '../details_card.dart';
import './wind_direction_card.view_model.dart';

class WindDirectionCardView extends StatelessWidget {
  final WindDirectionCardViewModel viewModel;

  WindDirectionCardView({
    Key key,
    @required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new DetailsCard(
      title: AppLocalizations.of(context).windDirections,
      child: new Text(viewModel.windDirections.join(", ")),
    );
  }
}
