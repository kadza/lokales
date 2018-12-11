import 'package:redux/redux.dart';

import './navigation_launcher.action.dart';
import './navigation_launcher.state.dart';

final navigationLauncherReducer = combineReducers<NavigationLauncherState>([
  TypedReducer<NavigationLauncherState, LaunchNavigationAction>(_launchNavigation),
  TypedReducer<NavigationLauncherState, LaunchNavigationSuccessAction>(_launchNavigationSuccess),
  TypedReducer<NavigationLauncherState, LaunchNavigationFailureAction>(_launchNavigationFailure),
]);

NavigationLauncherState _launchNavigation(
  NavigationLauncherState state, 
  LaunchNavigationAction action
  ){
    return NavigationLauncherState(
      destinationLocation: action.destinationLocation, 
      status: LaunchStatus.LAUNCH
    );
}

NavigationLauncherState _launchNavigationSuccess(
  NavigationLauncherState state, 
  LaunchNavigationSuccessAction action
  ){
    return NavigationLauncherState(
      destinationLocation: state.destinationLocation, 
      status: LaunchStatus.LAUNCH_SUCCESS
    );
}

NavigationLauncherState _launchNavigationFailure(
  NavigationLauncherState state, 
  LaunchNavigationFailureAction action
  ){
    return NavigationLauncherState(
      destinationLocation: state.destinationLocation, 
      status: LaunchStatus.LAUNCH_FAILURE
    );
}