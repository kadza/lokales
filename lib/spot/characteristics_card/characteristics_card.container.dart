import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './characteristics_card.view.dart';
import './characteristics_card.view_model.dart';
import '../../state.dart';

class CharacteristicsCard extends StatelessWidget {
  CharacteristicsCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CharacteristicsCardViewModel>(
        converter: (Store<AppState> store) {
      return CharacteristicsCardViewModel.fromStore(store, context);
    }, builder: (context, viewModel) {
      return CharacteristicsCardView(
        characteristicList: viewModel.characteristicList,
        onHelpPressed: viewModel.onHelpPressed,
      );
    });
  }
}
