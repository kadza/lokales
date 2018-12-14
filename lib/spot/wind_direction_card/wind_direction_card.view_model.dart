import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class WindDirectionCardViewModel{
  final List<String> windDirections;

  WindDirectionCardViewModel({@required this.windDirections});
  
  factory WindDirectionCardViewModel.from(
      Store<SpotStateContainer> spotStateStore) {
    final selectedSpot = selectedSpotSelector(spotStateStore.state);

    return WindDirectionCardViewModel(windDirections: selectedSpot.validWindDirections);
  }
}