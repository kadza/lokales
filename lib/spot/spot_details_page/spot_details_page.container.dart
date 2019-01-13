import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './spot_details_page.view.dart';
import './spot_details_page.view_model.dart';
import '../../state.dart';

class SpotDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SpotDetailsPageViewModel>(
        converter: (Store<AppState> store) {
      return SpotDetailsPageViewModel.fromStore(store);
    }, builder: (context, viewModel) {
      if (viewModel == null) return Container();

      return SpotDetailsPageView(
        title: viewModel.title,
        titleImagePath: viewModel.titleImagePath,
        onWillPop: viewModel.onWillPop,
        isDescriptionVsible: viewModel.isDescriptionVisible,
      );
    });
  }
}
