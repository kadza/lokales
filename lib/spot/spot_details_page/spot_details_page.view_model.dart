import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../spot.action.dart';
import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class SpotDetailsPageViewModel {
  final String title;
  final String titleImagePath;
  final Store<SpotStateContainer> store;

  SpotDetailsPageViewModel({
    @required this.title,
    @required this.titleImagePath,
    @required this.store,
  });

  factory SpotDetailsPageViewModel.fromStore(
    Store<SpotStateContainer> store,
  ) {
    final selectedSpot = selectedSpotSelector(store.state);

    if (selectedSpot == null) return null;

    return SpotDetailsPageViewModel(
      title: selectedSpot.shortName,
      titleImagePath: selectedSpot.titleImagePath,
      store: store,
    );
  }

  Future<bool> onWillPop() {
    store.dispatch(SelectSpotAction(spotId: null));
    return Future.value(true);
  }
}
