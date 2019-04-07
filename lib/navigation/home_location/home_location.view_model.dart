import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import './home_location.action.dart';
import './home_location.selector.dart';
import './home_location.state.dart';
import '../../map/dynamic_map.model.dart';
import '../../map/dynamic_map.state.dart';

class HomeLocationViewModel {
  final CameraPosition homeLocation;
  final Store<DynamicMapStateContainer> dynamicMapStateStore;
  final Store<HomeLocationStateContainer> homeLocationStateStore;
  bool isPromptVisible;

  HomeLocationViewModel({
    @required this.homeLocation,
    @required this.isPromptVisible,
    @required this.homeLocationStateStore,
    @required this.dynamicMapStateStore,
  });

  factory HomeLocationViewModel.from(
    Store<HomeLocationStateContainer> homeLocationStateStore,
    Store<DynamicMapStateContainer> dynamicMapStateStore,
  ) {
    final homeLocation = homeLocationSelector(
      dynamicMapStateStore.state,
    );
    final isPromptVisible = isPromptVisibleSelector(
      homeLocationStateStore.state,
    );

    return HomeLocationViewModel(
      homeLocation: homeLocation,
      isPromptVisible: isPromptVisible,
      dynamicMapStateStore: dynamicMapStateStore,
      homeLocationStateStore: homeLocationStateStore,
    );
  }

  void hidePrompt() {
    homeLocationStateStore.dispatch(HomeLocationSetIsPromptVisibleAction(
      isPromptVisible: false,
    ));
  }
}
