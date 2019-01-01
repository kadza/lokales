import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import './home_location.action.dart';
import './home_location.selector.dart';
import './home_location.state.dart';
import '../../map/dynamic_map.model.dart';
import '../../map/dynamic_map.selector.dart';
import '../../map/dynamic_map.state.dart';

@immutable
class HomeLocationViewModel {
  final CameraPosition homeLocation;
  final Store<DynamicMapStateContainer> dynamicMapStateStore;

  HomeLocationViewModel(
      {@required this.homeLocation, @required this.dynamicMapStateStore});

  factory HomeLocationViewModel.from(
      Store<HomeLocationStateContainer> homeLocationStateStore,
      Store<DynamicMapStateContainer> dynamicMapStateStore) {
    final homeLocation = homeLocationSelector(homeLocationStateStore.state);

    return HomeLocationViewModel(
        homeLocation: homeLocation, dynamicMapStateStore: dynamicMapStateStore);
  }

  void setHomeLocation() {
    var cameraPosition =
        cameraPositionMapSelector(dynamicMapStateStore.state)["homeLocation"];
    dynamicMapStateStore
        .dispatch(SetHomeLocationAction(homeLocation: cameraPosition));
  }
}
