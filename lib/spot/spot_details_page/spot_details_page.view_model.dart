import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class SpotDetailsPageViewModel {
  final String title;
  final String titleImagePath;

  SpotDetailsPageViewModel({
    this.title,
    this.titleImagePath,
  });

  factory SpotDetailsPageViewModel.fromStore(
    Store<SpotStateContainer> spotStateStore,
  ) {
    final selectedSpot = selectedSpotSelector(spotStateStore.state);

    return SpotDetailsPageViewModel(
      title: selectedSpot.shortName,
      titleImagePath: selectedSpot.titleImagePath,
    );
  }
}
