import 'package:redux/redux.dart';

import 'spot.action.dart';
import 'spot.state.dart';

final spotReducer = combineReducers<SpotState>([
  TypedReducer<SpotState, SelectSpotAction>(_selectSpot),
]);

SpotState _selectSpot(SpotState state, SelectSpotAction selectSpotAction) {
  return SpotState(
      entities: state.entities,
      settings: state.settings,
      selectedSpotId: selectSpotAction.spotId);
}
