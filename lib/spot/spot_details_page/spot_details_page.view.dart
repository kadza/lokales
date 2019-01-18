import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../characteristics_card/characteristics_card.container.dart';
import '../description_card/description_card.container.dart';
import '../icm_card/icm_card.container.dart';
import '../location_card/location_card.container.dart';
import '../navigation_card/navigation_card.container.dart';
import '../settings/spot_settings.model.dart';
import '../weather_card/weather_card.container.dart';

class SpotDetailsPageView extends StatelessWidget {
  final String title;
  final String titleImagePath;
  final WillPopCallback onWillPop;
  final List<SpotSetting> settings;

  SpotDetailsPageView({
    Key key,
    @required this.title,
    @required this.titleImagePath,
    @required this.onWillPop,
    @required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cards = settings
        .where((settings) => settings.isVisible)
        .map((settings) => _mapSpotSettingsIdToSpotCard(settings.id))
        .toList();

    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  title,
                ),
                background: Image.asset(
                  titleImagePath,
                  fit: BoxFit.cover,
                ),
                centerTitle: false,
                collapseMode: CollapseMode.parallax,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(cards),
            )
          ],
        ),
      ),
    );
  }

  Widget _mapSpotSettingsIdToSpotCard(SpotSettingId settingsId) {
    switch (settingsId) {
      case SpotSettingId.characteristics:
        return CharacteristicsCard();
      case SpotSettingId.description:
        return DescriptionCard();
      case SpotSettingId.icm:
        return IcmCard();
      case SpotSettingId.location:
        return LocationCard();
      case SpotSettingId.navigation:
        return NavigationCard();
      case SpotSettingId.weather:
        return WeatherCard();
      default:
        return Container();
    }
  }
}
