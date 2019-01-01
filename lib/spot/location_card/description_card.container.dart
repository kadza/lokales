import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './location_card.view.dart';
import './location_card.view_model.dart';
import '../../state.dart';

class LocationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LocationCardViewModel>(
        converter: (Store<AppState> store) {
      return LocationCardViewModel.from(store);
    }, builder: (context, viewModel) {
      return LocationCardView(
        viewModel: viewModel,
      );
    });
  }
}
