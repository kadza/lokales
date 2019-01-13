import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './description_card.view_model.dart';
import './description_page.view.dart';
import '../../state.dart';

class DescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DescriptionCardViewModel>(
        converter: (Store<AppState> store) {
      return DescriptionCardViewModel.fromStore(store, context);
    }, builder: (context, viewModel) {
      if (viewModel == null) return Container();

      return DescriptionPageView(
        description: viewModel.description,
      );
    });
  }
}
