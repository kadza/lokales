import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './wind_direction_card.view.dart';
import './wind_direction_card.view_model.dart';
import '../../state.dart';

class WindDirectionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return StoreConnector<AppState, WindDirectionCardViewModel>(
        converter: (Store<AppState> store) {
      
      return WindDirectionCardViewModel.from(store);
    }, builder: (context, viewModel) {
      
      return WindDirectionCardView(viewModel: viewModel,);
    });
  }
}

