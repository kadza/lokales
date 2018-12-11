import 'state.dart';
import 'navigation/home_location/home_location.reducer.dart';
import 'map/dynamic_map.reducer.dart';

AppState appStateReducer(AppState state, action) => new AppState(
  homeLocationState: homeLocationReducer(state.homeLocationState, action),
  dynamicMapState: dynamicMapReducer(state.dynamicMapState, action),
);