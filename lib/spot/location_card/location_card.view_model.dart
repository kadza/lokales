import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../../map/dynamic_map.model.dart';
import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class LocationCardViewModel {
  final CameraPosition location;

  LocationCardViewModel({@required this.location});

  factory LocationCardViewModel.fromStore(
    Store<SpotStateContainer> spotStateStore,
  ) {
    final selectedSpot = selectedSpotSelector(spotStateStore.state);

    return LocationCardViewModel(location: selectedSpot.location);
  }
}
