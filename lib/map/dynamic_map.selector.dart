import 'dynamic_map.model.dart';
import 'dynamic_map.state.dart';

Map<String, CameraPosition> cameraPositionMapSelector(
        DynamicMapStateContainer stateContainer) =>
    stateContainer.dynamicMapState.entities;

bool isMapCreatedSelector(
        DynamicMapStateContainer stateContainer, String clientId) =>
    stateContainer.dynamicMapState.entities.containsKey(clientId);
