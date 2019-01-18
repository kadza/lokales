import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import './spot_settings.model.dart';
import './spot_settings.selector.dart';
import '../spot.action.dart';
import '../spot.state.dart';

class SpotSettingsViewModel {
  final List<SpotSetting> settings;
  final Store<SpotStateContainer> store;

  SpotSettingsViewModel({
    @required this.settings,
    @required this.store,
  });

  factory SpotSettingsViewModel.fromStore(
    Store<SpotStateContainer> store,
  ) {
    final settings = selectSpotSettings(store.state);

    if (settings == null) return null;

    return SpotSettingsViewModel(
      settings: settings,
      store: store,
    );
  }

  void onReorder(int oldIndex, int newIndex) {
    store.dispatch(ReorderSpotCardAction(
      oldIndex: oldIndex,
      newIndex: newIndex,
    ));
  }

  void toggleSpotCardVisibility(SpotSettingId spotSettingId) {
    store.dispatch(ToggleSpotCardVisibilityAction(
      spotSettingId: spotSettingId,
    ));
  }
}
