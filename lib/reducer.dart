import 'state.dart';
import 'navigation/home_location/home_location.reducer.dart';

AppState appStateReducer(AppState state, action) => new AppState(
  homeLocation: navigationReducer(state.homeLocation, action)
);