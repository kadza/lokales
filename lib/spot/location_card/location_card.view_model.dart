import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../../map/dynamic_map.model.dart';
import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class LocationCardViewModel {
  final CameraPosition location;
  final String clientId;

  LocationCardViewModel({
    @required this.location,
    @required this.clientId,
  });

  factory LocationCardViewModel.fromStore(
    Store<SpotStateContainer> spotStateStore,
  ) {
    final selectedSpot = selectedSpotSelector(spotStateStore.state);
    if (selectedSpot == null) return null;

    return LocationCardViewModel(
      location: selectedSpot.location,
      clientId: selectedSpot.id,
    );
  }
}
