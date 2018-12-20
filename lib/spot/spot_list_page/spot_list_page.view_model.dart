import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../spot.action.dart';
import '../spot.model.dart';
import '../spot.selector.dart';
import '../spot.state.dart';

typedef void SelectSpot(String spotId);

@immutable
class SpotListPageViewModel{
  final List<Spot> spotList;
  final SelectSpot selectSpot;

  SpotListPageViewModel({@required this.spotList, @required this.selectSpot});
  
  factory SpotListPageViewModel.from(
      Store<SpotStateContainer> spotStateStore) {
    final spotList = selectAll(spotStateStore.state);
    final selectSpot = (spotId) => spotStateStore.dispatch(SelectSpotAction(spotId: spotId));

    return SpotListPageViewModel(spotList: spotList, selectSpot: selectSpot);
  }
}