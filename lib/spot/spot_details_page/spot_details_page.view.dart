import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../characteristics_card/characteristics_card.container.dart';
import '../description_card/description_card.container.dart';
import '../icm_card/icm_card.container.dart';
import '../location_card/location_card.container.dart';
import '../navigation_card/navigation_card.container.dart';
import '../weather_card/weather_card.container.dart';

class SpotDetailsPageView extends StatelessWidget {
  final String title;
  final String titleImagePath;
  final WillPopCallback onWillPop;

  SpotDetailsPageView({
    Key key,
    @required this.title,
    @required this.titleImagePath,
    @required this.onWillPop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              delegate: SliverChildListDelegate(
                <Widget>[
                  IcmCard(),
                  WeatherCard(),
                  NavigationCard(),
                  LocationCard(),
                  CharacteristicsCard(),
                  DescriptionCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
