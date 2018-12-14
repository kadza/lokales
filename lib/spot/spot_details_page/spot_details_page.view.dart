import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './spot_details_page.view_model.dart';
import '../../l10n/app_localization.dart';
import '../description_card/description_card.container.dart';
import '../icm_card/icm_card.container.dart';
import '../location_card/description_card.container.dart';
import '../navigation_card/navigation_card.container.dart';
import '../web_view_card/description_card.container.dart';
import '../wind_direction_card/wind_direction_card.container.dart';

class SpotDetailsPageView extends StatelessWidget {
  final SpotDetailsPageViewModel viewModel;

  SpotDetailsPageView({
    Key key,
    @required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.viewModel.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              IcmCard(),
              WebViewCard(
                  title: AppLocalizations.of(context).windguruWeatherForecast,
              ),
              NavigationCard(),
              LocationCard(),
              WindDirectionCard(),
              DescriptionCard(),
            ],
          ),
        ),
      ),
    );
  }
}
