import 'package:redux/redux.dart';

import '../../map/dynamic_map.action.dart';
import 'home_location.state.dart';

final homeLocationReducer = combineReducers<HomeLocationState>([
  TypedReducer<HomeLocationState, AnimateMapAction>(_setHomeLocation)
]);

HomeLocationState _setHomeLocation(HomeLocationState state, AnimateMapAction animateMapAction){
  if(animateMapAction.clientId == "homeLocation")
    return HomeLocationState(homeLocation: animateMapAction.cameraPosition);
  
  return state;
}