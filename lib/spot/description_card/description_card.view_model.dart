import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class DescriptionCardViewModel {
  final String description;

  DescriptionCardViewModel({this.description});

  factory DescriptionCardViewModel.fromStore(
    Store<SpotStateContainer> spotStateStore,
  ) {
    final selectedSpot = selectedSpotSelector(spotStateStore.state);

    return DescriptionCardViewModel(description: selectedSpot.description);
  }
}
