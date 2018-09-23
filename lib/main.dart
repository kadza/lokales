import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

import 'l10n/app_localization.dart';
import 'location.dart';
import 'settings/settings.dart';
import 'settings/settings_drawer.dart';
import 'settings/settings_repository.dart';
import 'spot.dart';
import 'spot_list.dart';
import 'spot_details/spot_details_settings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

void main() => runApp(new App());

class App extends StatelessWidget {


  Widget build(BuildContext context) {
    return new MaterialApp(
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('pl', ''),
      ],
      theme: new ThemeData(
        primaryColor: Colors.black,
      ),
      title: 'Lokales',
      home: new AppHome(),
    );
  }
}

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> with WidgetsBindingObserver {
  Settings _settings = new Settings(
    homePosition: new MapPosition(
      center: new LatLng(51.0, 19.0), 
      zoom: 15.0
    ),
    spotDetailsSettings: new SpotDetailsSettings(
      isDescriptionVisible: true,
      isLocationVisible: true,
      isWindDirectionsVisible: true,
      isWindguruVisible: true,
      isIcmVisible: true,
    )
  );

  @override
  void initState() {
    super.initState();
    this._readSettings();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    setState((){
      switch (state) {
        case AppLifecycleState.suspending:
        case AppLifecycleState.paused:
          this._saveSettings();
          break;
        default:
      }
    });
  }

  Future<SettingsRepository> _getSettingsRepository() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return new SettingsRepository(sharedPreferences: sharedPreferences);
  }

  Future _saveSettings() async {
    final settingsRepository = await _getSettingsRepository();
    await settingsRepository.setSettings(this._settings);
  }

  Future _readSettings() async {
    final settingsRepository = await _getSettingsRepository();
    final settings =  settingsRepository.getSettings();
    if (settings != null) {
      setState(() {
      this._settings = settings;              
            });
    }
  }

  void _onHomePositionChanged(MapPosition homePosition) {
    setState(() {
      this._settings.homePosition = homePosition;
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(AppLocalizations.of(context).spots),
      ),
      drawer: new SettingsDrawer(
        initialHomePosition: this._settings.homePosition,
        onHomePositionChanged: _onHomePositionChanged,
      ),
      body: new SpotList(
        homeLocation: this._settings.homePosition.center,
        spots: <Spot>[
          new Spot(
            name: 'Czarnocin',
            icmImageLocation: ImageLocation(row: 423, column: 227),
            validWindDirections: ["NW", "SE"],
            location: LatLng(51.608700, 19.699706),
            windguruUrl: Uri.parse("https://www.windguru.cz/4880"),
            description: AppLocalizations.of(context).czarnocinDescription,
          ),
          new Spot(
            name: 'Zalew Sulejowski - Karolinów',
            icmImageLocation: ImageLocation(row: 430, column: 234),
            validWindDirections: ["SW"],
            location: new LatLng(51.451805, 19.971582),
            windguruUrl: Uri.parse("https://www.windguru.cz/32462"),
            description: AppLocalizations.of(context).zalewSulejowskiDescription,
          ),
          new Spot(
            name: 'Chałupy - Chałupy 6',
            icmImageLocation: ImageLocation(row: 332, column: 206),
            validWindDirections: ["W", "SW", "S", "SE"],
            location: new LatLng(54.761199, 18.499220),
            windguruUrl: Uri.parse("https://www.windguru.cz/597178"),
            description: AppLocalizations.of(context).chalupyDescription,
          ),
        ],
      ),
    );
  }
}
