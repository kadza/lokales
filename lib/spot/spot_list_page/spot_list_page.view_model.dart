import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../../map/dynamic_map.action.dart';
import '../spot.action.dart';
import '../spot.model.dart';
import '../spot.selector.dart';
import '../spot.state.dart';

typedef void SelectSpot(String spotId);

@immutable
class SpotListPageViewModel {
  final List<Spot> spotList;
  final SelectSpot selectSpot;

  SpotListPageViewModel({
    @required this.spotList,
    @required this.selectSpot,
  });

  factory SpotListPageViewModel.fromStore(
      Store<SpotStateContainer> spotStateStore) {
    final spotList = selectAll(spotStateStore.state);
    final selectSpot = (String spotId) {
      spotStateStore.dispatch(SelectSpotAction(spotId: spotId));
      final selectedSpot = selectSpotById(spotStateStore.state, spotId);
      spotStateStore.dispatch(
        SetCameraPositionAction(
          clientId: spotId,
          cameraPosition: selectedSpot.location,
          isCameraPositionFromMap: false,
        ),
      );
    };
    return SpotListPageViewModel(
      spotList: spotList,
      selectSpot: selectSpot,
    );
  }
}
