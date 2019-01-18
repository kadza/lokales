import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import '../../l10n/app_localization.dart';
import '../settings/spot_settings.model.dart';
import '../settings/spot_settings.selector.dart';
import '../spot.action.dart';
import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class SpotDetailsPageViewModel {
  final String title;
  final String titleImagePath;
  final List<SpotSetting> settings;
  final Store<SpotStateContainer> store;

  SpotDetailsPageViewModel({
    @required this.title,
    @required this.titleImagePath,
    @required this.store,
    @required this.settings,
  });

  factory SpotDetailsPageViewModel.fromStore(
    Store<SpotStateContainer> store,
    BuildContext context,
  ) {
    final selectedSpot = selectedSpotSelector(store.state);
    var settings = selectSpotSettings(store.state);

    if (selectedSpot == null || settings == null) return null;

    settings = settings
        .where((settings) =>
            settings.id != SpotSettingId.description ||
            !AppLocalizations.of(context)
                .spotDescription(selectedSpot.description)
                .isEmpty)
        .toList();

    return SpotDetailsPageViewModel(
      title: selectedSpot.shortName,
      titleImagePath: selectedSpot.titleImagePath,
      store: store,
      settings: settings,
    );
  }

  Future<bool> onWillPop() {
    store.dispatch(SelectSpotAction(spotId: null));
    return Future.value(true);
  }
}
