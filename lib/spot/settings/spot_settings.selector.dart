import './spot_settings.model.dart';
import '../spot.state.dart';

List<SpotSetting> selectSpotSettings(SpotStateContainer state) =>
    state.spotState.settings;
