import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'settings.dart';

class SettingsRepository {
  const SettingsRepository({@required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  Future<bool> setSettings(Settings settings) async {
    final settingsJson = json.encode(settings);

    return this.sharedPreferences.setString('settings', settingsJson);
  }

  Settings getSettings() {
    final settingsJson = sharedPreferences.getString('settings');
    
    if(settingsJson != null){
      final settingsMap = json.decode(settingsJson);
      final settings =  Settings.fromJson(settingsMap);
      return settings;
    }

    return null;
  }

}
