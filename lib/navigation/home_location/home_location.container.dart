import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './home_location.view.dart';
import './home_location.view_model.dart';
import '../../state.dart';

class HomeLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeLocationViewModel>(
        converter: (Store<AppState> store) {
      return HomeLocationViewModel.from(store, store);
    }, builder: (context, viewModel) {
      return HomeLocationView(
        viewModel: viewModel,
      );
    });
  }
}
