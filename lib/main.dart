import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

import 'location.dart';
import 'settings/settings.dart';
import 'settings/settings_drawer.dart';
import 'settings/settings_repository.dart';
import 'spot.dart';
import 'spot_list.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver{
  Settings _settings = new Settings(
    homePosition: new MapPosition(center: new LatLng(51.0, 19.0), zoom: 15.0),
  );
  SettingsRepository settingsRepository = new SettingsRepository();

  @override
  void initState() {
    super.initState();
    this.settingsRepository.getSettings()
    .then(
      (settings) => setState((){ if(settings != null) this._settings = settings;})
    );
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      switch (state) {
        case AppLifecycleState.suspending:
        case AppLifecycleState.paused:
          this.settingsRepository.setSettings(this._settings);
          break;
        default:
      }
    });
  }
  
  void _onHomePositionChanged(MapPosition homePosition) {
    setState(() {
      this._settings.homePosition = homePosition;
    });
  }

  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(
          primaryColor: Colors.black,
        ),
        title: 'Lokales',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Spoty'),
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
              ),
              new Spot(
                name: 'Zalew Sulejowski - Karolinów',
                icmImageLocation: ImageLocation(row: 430, column: 234),
                validWindDirections: ["SW"],
                location: new LatLng(51.451805, 19.971582),
                windguruUrl: Uri.parse("https://www.windguru.cz/32462"),
              ),
              new Spot(
                name: 'Chałupy - Chałupy 6',
                icmImageLocation: ImageLocation(row: 332, column: 206),
                validWindDirections: ["W", "SW", "S", "SE"],
                location: new LatLng(54.761199, 18.499220),
                windguruUrl: Uri.parse("https://www.windguru.cz/597178"),
              ),
            ],
          ),
        ));
  }
}
