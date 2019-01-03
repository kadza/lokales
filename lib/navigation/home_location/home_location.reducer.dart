import 'package:redux/redux.dart';

import '../../map/dynamic_map.action.dart';
import 'home_location.state.dart';

final homeLocationReducer = combineReducers<HomeLocationState>([
  TypedReducer<HomeLocationState, SetCameraPositionAction>(_setHomeLocation)
]);

HomeLocationState _setHomeLocation(
    HomeLocationState state, SetCameraPositionAction setCameraPositionAction) {
  if (setCameraPositionAction.clientId == "homeLocation")
    return HomeLocationState(
        homeLocation: setCameraPositionAction.cameraPosition);

  return state;
}
