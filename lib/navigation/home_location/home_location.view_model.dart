import 'package:flutter/foundation.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:redux/redux.dart';

import './home_location.action.dart';
import './home_location.state.dart';
import './home_location.selector.dart';

class HomeLocationViewModel {
  final MapPosition homePosition;
  final Function onHomePositionChanged;

  HomeLocationViewModel({
    @required this.homePosition,
    @required this.onHomePositionChanged,
  });

  factory HomeLocationViewModel.from(Store<HomeLocationState> store) {
    final homePosition = homeLocationSelector(store.state);

    return HomeLocationViewModel(
      homePosition: homePosition,
      onHomePositionChanged: (homePosition) =>
          store.dispatch(SetHomePositionAction(homePosition)),
    );
  }
}