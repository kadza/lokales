import './spot.model.dart';
import './spot.state.dart';

Spot selectedSpotSelector(SpotStateContainer state) =>
    state.spotState.entities[state.spotState.selectedSpotId];

List<Spot> selectAll(SpotStateContainer state) {
  var spotList = state.spotState.entities.values.toList();
  spotList.sort((a, b) => a.name.compareTo(b.name));

  return spotList;
}

Spot selectSpotById(SpotStateContainer state, String spotId) =>
    state.spotState.entities[spotId];
