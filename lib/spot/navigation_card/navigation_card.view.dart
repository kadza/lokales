import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';
import '../../presentation/lokales_icons.dart';
import '../../ui/circular_button.view.dart';
import '../details_card.dart';

class NavigationCardView extends StatelessWidget {
  final VoidCallback goToSpot;
  final VoidCallback goHome;

  NavigationCardView({
    @required this.goToSpot,
    @required this.goHome,
  });

  @override
  Widget build(BuildContext context) {
    return DetailsCard(
        title: AppLocalizations.of(context).navigation,
        child: Row(
          children: <Widget>[
            CircularButtonView(
              icon: Icon(Lokales.logo),
              onTap: () => goToSpot,
            ),
            CircularButtonView(
              icon: Icon(Icons.home),
              onTap: () => goHome,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ));
  }
}
