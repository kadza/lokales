import 'package:redux/redux.dart';

import 'dynamic_map.action.dart';
import 'dynamic_map.state.dart';

final dynamicMapReducer = combineReducers<DynamicMapState>([
  TypedReducer<DynamicMapState, SetCameraPositionAction>(_setCameraPosition),
]);

DynamicMapState _setCameraPosition(
    DynamicMapState mapState, SetCameraPositionAction action) {
  Map<String, DynamicMapStateEntity> newMap = Map.from(mapState.entities);
  newMap[action.clientId] = DynamicMapStateEntity(
    cameraPosition: action.cameraPosition,
    isCameraPositionFromMap: action.isCameraPositionFromMap,
    markers: mapState.entities[action.clientId].markers,
    areGesturesEnabled: mapState.entities[action.clientId].areGesturesEnabled,
  );

  return DynamicMapState(entities: newMap);
}
