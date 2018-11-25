import 'package:flutter_map/flutter_map.dart';
import 'package:redux/redux.dart';

import './home_location.action.dart';

final navigationReducer = combineReducers<MapPosition>([
  TypedReducer<MapPosition, SetHomePositionAction>(_setHomePosition)
]);

MapPosition _setHomePosition(MapPosition position, action){
  return action.homePosition;
}