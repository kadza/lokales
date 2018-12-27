import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './navigation_card.view_model.dart';
import '../../l10n/app_localization.dart';
import '../../presentation/lokales_icons.dart';
import '../../ui/circular_button.view.dart';
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
            CircularButtonView(
              icon: Icon(Lokales.logo), 
              onTap: viewModel.goToSpot,
            ),
            CircularButtonView(
              icon: Icon(Icons.home), 
              onTap: viewModel.goHome,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ));
  }
}
