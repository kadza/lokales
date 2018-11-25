import 'package:test/test.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:Lokales/settings/settings.dart';
import 'package:Lokales/settings/settings_repository.dart';
import 'package:Lokales/spot_details/spot_details_settings.dart';
import 'package:latlong/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mockito/mockito.dart';
import 'dart:async';
import 'dart:convert';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  SharedPreferences sharedPreferences;
  final spotSettings = new SpotDetailsSettings(
      isDescriptionVisible: false,
      isIcmVisible: false,
      isLocationVisible: false,
      isWindDirectionsVisible: false,
      isWindguruVisible: false);

  setUpAll(() async {
    sharedPreferences = new MockSharedPreferences();
  });

  test('can store home position', () async {
    final homePosition = new MapPosition(center: new LatLng(5.0, 5.0));
    final settings = new Settings(
        homePosition: homePosition, spotDetailsSettings: spotSettings);

    final settingsJson = json.encode(settings);
    when(sharedPreferences.setString("settings", settingsJson))
        .thenReturn(new Future(() => true));
    when(sharedPreferences.getString("settings"))
        .thenReturn(settings.toJson().toString());

    final settingRepository =
        new SettingsRepository(sharedPreferences: sharedPreferences);

    await settingRepository.setSettings(settings);
    final readSettings = settingRepository.getSettings();

    expect(readSettings.homePosition.center.latitude, 5.0);
    expect(readSettings.homePosition.center.longitude, 5.0);
  });
}
