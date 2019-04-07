import 'dynamic_map.state.dart';

DynamicMapStateEntity dynamicMapStateEntitySelector(
        DynamicMapStateContainer stateContainer, String clientId) =>
    stateContainer.dynamicMapState.entities[clientId];

bool isMapCreatedSelector(
        DynamicMapStateContainer stateContainer, String clientId) =>
    stateContainer.dynamicMapState.entities.containsKey(clientId);
