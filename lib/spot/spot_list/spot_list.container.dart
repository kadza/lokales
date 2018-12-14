import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './spot_list.view.dart';
import './spot_list.view_model.dart';
import '../../state.dart';

class SpotList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return StoreConnector<AppState, SpotListViewModel>(
        converter: (Store<AppState> store) {
      
      return SpotListViewModel.from(store);
    }, builder: (context, viewModel) {
      
      return SpotListView(viewModel: viewModel,);
    });
  }
}

