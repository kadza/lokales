import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './navigation_card.view_model.dart';
import '../../l10n/app_localization.dart';
import '../details_card.dart';

class NavigationCardView extends StatelessWidget {
  final NavigationCardViewModel viewModel; 

  NavigationCardView({
    @required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {

    return new DetailsCard(
        title: AppLocalizations.of(context).navigation,
        child: new Row(
          children: <Widget>[
            RaisedButton(
              onPressed: viewModel.goToSpot,
              child: Text(AppLocalizations.of(context).goToSpot),
            ),
            RaisedButton(
              onPressed: viewModel.goHome,
              child: Text(AppLocalizations.of(context).goHome),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ));
  }
}
