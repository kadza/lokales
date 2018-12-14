import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class SpotDetailsPageViewModel{
  final String title;

  SpotDetailsPageViewModel({this.title});
  
  factory SpotDetailsPageViewModel.from(
      Store<SpotStateContainer> spotStateStore) {
    final selectedSpot = selectedSpotSelector(spotStateStore.state);

    return SpotDetailsPageViewModel(title: selectedSpot.name);
  }
}