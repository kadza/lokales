import 'package:redux/redux.dart';

import './settings/spot_settings.model.dart';
import 'spot.action.dart';
import 'spot.state.dart';

final spotReducer = combineReducers<SpotState>([
  TypedReducer<SpotState, SelectSpotAction>(_selectSpot),
  TypedReducer<SpotState, ReorderSpotCardAction>(_reorderSpotCard),
  TypedReducer<SpotState, ToggleSpotCardVisibilityAction>(
      _toggleSpotCardVisibility),
]);

SpotState _selectSpot(SpotState state, SelectSpotAction action) {
  return SpotState(
    entities: state.entities,
    settings: state.settings,
    selectedSpotId: action.spotId,
  );
}

SpotState _reorderSpotCard(SpotState state, ReorderSpotCardAction action) {
  var settings = List<SpotSetting>.from(state.settings);
  var oldIndex = action.oldIndex;
  var newIndex = action.newIndex;

  if (newIndex > oldIndex) newIndex -= 1;

  final setting = settings[action.oldIndex];
  settings.removeAt(oldIndex);
  settings.insert(newIndex, setting);

  return SpotState(
    entities: state.entities,
    settings: settings,
    selectedSpotId: state.selectedSpotId,
  );
}

SpotState _toggleSpotCardVisibility(
  SpotState state,
  ToggleSpotCardVisibilityAction action,
) {
  final settings = List<SpotSetting>.from(state.settings).map(
    (setting) {
      if (setting.id == action.spotSettingId) {
        return SpotSetting(
          id: setting.id,
          isVisible: !setting.isVisible,
        );
      }

      return setting;
    },
  ).toList();

  return SpotState(
    entities: state.entities,
    settings: settings,
    selectedSpotId: state.selectedSpotId,
  );
}
