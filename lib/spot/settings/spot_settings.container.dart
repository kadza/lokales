import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './spot_settings.view.dart';
import './spot_settings.view_model.dart';
import '../../state.dart';

class SpotSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SpotSettingsViewModel>(
        converter: (Store<AppState> store) {
      return SpotSettingsViewModel.fromStore(store);
    }, builder: (context, viewModel) {
      if (viewModel == null) return Container();

      return SpotSettingsView(
        settings: viewModel.settings,
        onReorder: viewModel.onReorder,
        toggleSpotCardVisibility: viewModel.toggleSpotCardVisibility,
      );
    });
  }
}
