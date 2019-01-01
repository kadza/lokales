import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './weather_card.view_model.dart';
import '../../l10n/app_localization.dart';
import '../details_card.dart';
import '../../ui/circular_button.view.dart';
import '../../presentation/lokales_icons.dart';

// TODO: Weather forcast translation

class WeatherCardView extends StatelessWidget {
  final WeatherCardViewModel viewModel;

  WeatherCardView({
    @required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    
    return new DetailsCard(
      title: "Weather forecast",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircularButtonView(
            onTap: viewModel.onWindguruTap,
            icon: Icon(Lokales.windguru),
          ),
          CircularButtonView(
            onTap: viewModel.onWindyTap,
            icon: Icon(Lokales.windy),
          ),
        ],
      ),
    );
  }
}
