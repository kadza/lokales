import './home_location.state.dart';
import '../../map/dynamic_map.model.dart';

CameraPosition homeLocationSelector(HomeLocationStateContainer state) =>
    state.homeLocationState.data.homeLocation;

bool isPromptVisibleSelector(HomeLocationStateContainer state) =>
    state.homeLocationState.ui.isPromptVisible;
