import './home_location.state.dart';
import '../../map/dynamic_map.model.dart';
import '../../map/dynamic_map.selector.dart';
import '../../map/dynamic_map.state.dart';

CameraPosition homeLocationSelector(DynamicMapStateContainer state) =>
    dynamicMapStateEntitySelector(state, clientId).cameraPosition;

bool isPromptVisibleSelector(HomeLocationStateContainer state) =>
    state.homeLocationState.ui.isPromptVisible;
