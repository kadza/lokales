import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './spot_list_page.view.dart';
import './spot_list_page.view_model.dart';
import '../../state.dart';

class SpotListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SpotListPageViewModel>(
        converter: (Store<AppState> store) {
      return SpotListPageViewModel.fromStore(store);
    }, builder: (context, viewModel) {
      return SpotListPageView(
        spotList: viewModel.spotList,
        selectSpot: viewModel.selectSpot,
      );
    });
  }
}
