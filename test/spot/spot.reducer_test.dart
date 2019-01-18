import 'package:test/test.dart';

import '../../lib/spot/settings/spot_settings.model.dart';
import '../../lib/spot/spot.action.dart';
import '../../lib/spot/spot.model.dart';
import '../../lib/spot/spot.reducer.dart';
import '../../lib/spot/spot.state.dart';

void main() {
  SpotState initialState = SpotState(
    entities: Map<String, Spot>(),
    settings: [
      SpotSetting(id: SpotSettingId.icm, isVisible: true),
      SpotSetting(id: SpotSettingId.location, isVisible: true),
      SpotSetting(id: SpotSettingId.description, isVisible: true),
    ],
    selectedSpotId: null,
  );

  test('select spot', () {
    final state = spotReducer(initialState, SelectSpotAction(spotId: 'kuku'));

    expect(state.entities, Map<String, Spot>());
    expect(state.selectedSpotId, 'kuku');
  });

  test('reorder spot card', () {
    final state = spotReducer(
        initialState, ReorderSpotCardAction(oldIndex: 2, newIndex: 0));

    expect(state.settings[0].id, SpotSettingId.description);
    expect(state.settings[1].id, SpotSettingId.icm);
    expect(state.settings[2].id, SpotSettingId.location);
  });

  test('toggle spot card visibility', () {
    final state = spotReducer(
      initialState,
      ToggleSpotCardVisibilityAction(
        spotSettingId: SpotSettingId.description,
      ),
    );

    expect(state.settings[0].isVisible, true);
    expect(state.settings[1].isVisible, true);
    expect(state.settings[2].isVisible, false);
  });
}
