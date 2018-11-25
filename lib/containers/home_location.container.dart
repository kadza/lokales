import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../navigation/home_location/home_location.view.dart';
import '../navigation/home_location/home_location.view_model.dart';
import '../state.dart';

class HomeLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeLocationViewModel>(
        converter: (Store<AppState> store) {
      return HomeLocationViewModel.from(store);
    }, builder: (context, viewModel) {
      return new HomeLocationView(viewModel: viewModel,);
    });
  }
}

