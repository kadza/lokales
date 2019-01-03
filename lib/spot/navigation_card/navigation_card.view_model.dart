import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../../navigation/home_location/home_location.selector.dart';
import '../../navigation/home_location/home_location.state.dart';
import '../../navigation/navigation_launcher/navigation_launcher.action.dart';
import '../spot.selector.dart';
import '../spot.state.dart';

class NavigationCardViewModel {
  final VoidCallback goHome;
  final VoidCallback goToSpot;

  NavigationCardViewModel({
    @required this.goHome,
    @required this.goToSpot,
  });

  factory NavigationCardViewModel.fromStore(
      Store<HomeLocationStateContainer> homeLocationStateStore,
      Store<SpotStateContainer> spotStateStore) {
    final homeLocation = homeLocationSelector(homeLocationStateStore.state);
    final spot = selectedSpotSelector(spotStateStore.state);

    return NavigationCardViewModel(
      goHome: () => spotStateStore.dispatch(
            LaunchNavigationAction(destinationLocation: homeLocation.target),
          ),
      goToSpot: () => spotStateStore.dispatch(
            LaunchNavigationAction(destinationLocation: spot.location.target),
          ),
    );
  }
}
