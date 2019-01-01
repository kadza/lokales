import '../../map/dynamic_map.model.dart';

class LaunchNavigationAction {
  final LatLng destinationLocation;

  LaunchNavigationAction({this.destinationLocation});
}

class LaunchNavigationSuccessAction {}

class LaunchNavigationFailureAction {}
