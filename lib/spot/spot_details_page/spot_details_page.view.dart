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
    @required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title:  Text(
                  this.viewModel.title,
                ),
              background: Image.asset(
                this.viewModel.titleImagePath, 
                fit: BoxFit.cover,
              ),
              centerTitle: false,
              collapseMode: CollapseMode.parallax,
            ),
          ),
        SliverList(
        delegate: SliverChildListDelegate(
             <Widget>[
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
          )
        ],
      ) 
    );
  }
}
