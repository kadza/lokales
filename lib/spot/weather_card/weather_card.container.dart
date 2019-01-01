import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './weather_card.view.dart';
import './weather_card.view_model.dart';
import '../../state.dart';

class WeatherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return StoreConnector<AppState, WeatherCardViewModel>(
        converter: (Store<AppState> store) {
      
      return WeatherCardViewModel.from(store, context);
    }, builder: (context, viewModel) {
      
      return WeatherCardView(viewModel: viewModel,);
    });
  }
}

