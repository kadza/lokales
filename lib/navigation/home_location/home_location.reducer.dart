import 'package:redux/redux.dart';

import './home_location.action.dart';
import '../../map/dynamic_map.action.dart';
import 'home_location.state.dart';

final homeLocationReducer = combineReducers<HomeLocationState>([
  TypedReducer<HomeLocationState, SetCameraPositionAction>(_setHomeLocation),
  TypedReducer<HomeLocationState, HomeLocationSetIsPromptVisibleAction>(
      _setIsPromptVisible),
]);

HomeLocationState _setHomeLocation(
    HomeLocationState state, SetCameraPositionAction action) {
  if (action.clientId == clientId)
    return HomeLocationState(
      ui: HomeLocationUi(
        isPromptVisible: state.ui.isPromptVisible,
      ),
    );

  return state;
}

HomeLocationState _setIsPromptVisible(
    HomeLocationState state, HomeLocationSetIsPromptVisibleAction action) {
  return HomeLocationState(
    ui: HomeLocationUi(
      isPromptVisible: action.isPromptVisible,
    ),
  );
}
