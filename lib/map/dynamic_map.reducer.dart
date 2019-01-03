import 'package:redux/redux.dart';

import 'dynamic_map.action.dart';
import 'dynamic_map.model.dart';
import 'dynamic_map.state.dart';

final dynamicMapReducer = combineReducers<DynamicMapState>([
  TypedReducer<DynamicMapState, SetCameraPositionAction>(_setCameraPosition),
  TypedReducer<DynamicMapState, DisposeMapAction>(_dispose),
]);

DynamicMapState _setCameraPosition(
    DynamicMapState mapState, SetCameraPositionAction action) {
  Map<String, CameraPosition> newMap = Map.from(mapState.entities);
  newMap[action.clientId] = action.cameraPosition;

  return DynamicMapState(entities: newMap);
}

DynamicMapState _dispose(DynamicMapState mapState, DisposeMapAction action) {
  Map<String, CameraPosition> newMap = Map.from(mapState.entities);
  newMap.remove(action.clientId);

  return DynamicMapState(entities: newMap);
}
