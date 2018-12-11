import 'package:flutter/foundation.dart';

import '../../map/dynamic_map.model.dart';

class NavigationLauncherState {
  LaunchStatus status;
  LatLng destinationLocation;

  NavigationLauncherState({
    @required this.destinationLocation,
    @required this.status,
  });
}

enum LaunchStatus {
  CAN_LAUNCH,
  CAN_LAUNCH_SUCCESS,
  CAN_LAUNCH_FAILURE,
  LAUNCH,
  LAUNCH_SUCCESS,
  LAUNCH_FAILURE
}