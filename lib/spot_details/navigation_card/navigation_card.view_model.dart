import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../../navigation/home_location/home_location.selector.dart';
import '../../navigation/home_location/home_location.state.dart';
import '../../navigation/navigation_launcher/navigation_launcher.action.dart';

class NavigationCardViewModel {
  final Function goHome;
  final Function goToSpot;

  NavigationCardViewModel({
    @required this.goHome,
    @required this.goToSpot,
  });

  factory NavigationCardViewModel.from(Store<HomeLocationStateContainer> store) {
    final homeLocation = homeLocationSelector(store.state);
    final spotLocation = homeLocationSelector(store.state);

    return NavigationCardViewModel(
      goHome: () =>
        store.dispatch(LaunchNavigationAction(destinationLocation: homeLocation.target)),
      goToSpot: () => 
        store.dispatch(LaunchNavigationAction(destinationLocation: spotLocation.target)),
    );
  }
}