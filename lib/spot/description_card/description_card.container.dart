import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './description_card.view.dart';
import './description_card.view_model.dart';
import '../../state.dart';

class DescriptionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DescriptionCardViewModel>(
        converter: (Store<AppState> store) {
      return DescriptionCardViewModel.fromStore(store);
    }, builder: (context, viewModel) {
      return DescriptionCardView(
        description: viewModel.description,
      );
    });
  }
}
