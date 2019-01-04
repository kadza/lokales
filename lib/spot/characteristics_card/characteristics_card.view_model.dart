import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import './legend_dialog.view.dart';
import '../spot.model.dart';
import '../spot.selector.dart';
import '../spot.state.dart';

//TODO: move legend dialog visibility to state

@immutable
class CharacteristicsCardViewModel {
  final List<SpotCharacteristics> characteristicList;
  final BuildContext context;

  CharacteristicsCardViewModel({
    @required this.characteristicList,
    @required this.context,
  });

  factory CharacteristicsCardViewModel.fromStore(
    Store<SpotStateContainer> store,
    BuildContext context,
  ) {
    final selectedSpot = selectedSpotSelector(store.state);

    return CharacteristicsCardViewModel(
      characteristicList: selectedSpot.characteristics,
      context: context,
    );
  }

  void onHelpPressed() {
    showDialog(
      context: this.context,
      builder: (BuildContext context) => LegendDialog(),
    );
  }
}
