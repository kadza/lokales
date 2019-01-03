import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './navigation_card.view.dart';
import './navigation_card.view_model.dart';
import '../../state.dart';

class NavigationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, NavigationCardViewModel>(
        converter: (Store<AppState> store) {
      return NavigationCardViewModel.fromStore(store, store);
    }, builder: (context, viewModel) {
      return NavigationCardView(
        goToSpot: viewModel.goToSpot,
        goHome: viewModel.goHome,
      );
    });
  }
}
