import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:latlong/latlong.dart';
import 'package:redux/redux.dart';

import 'l10n/app_localization.dart';
import 'location.dart';
import 'settings/settings.dart';
import 'settings/settings_drawer.dart';
import 'spot.dart';
import 'spot_details/spot_details_settings.dart';
import 'spot_list.dart';
import 'state.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  final Store<AppState> store;
  final WidgetBuilder devDrawerBuilder;

  App({
    Key key,
    this.store,
    this.devDrawerBuilder,
  }): super(key: key);
  
  final Settings _settings = new Settings(
      homePosition: new MapPosition(center: new LatLng(51.0, 19.0), zoom: 15.0),
      spotDetailsSettings: new SpotDetailsSettings(
        isDescriptionVisible: true,
        isLocationVisible: true,
        isWindDirectionsVisible: true,
        isWindguruVisible: true,
        isIcmVisible: true,
      ));

  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: new MaterialApp(
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
            home: new AppContent(store: store, devDrawerBuilder: devDrawerBuilder)));
  }
}

class AppContent extends StatelessWidget {
  final Store<AppState> store;
  final WidgetBuilder devDrawerBuilder;
  final Settings _settings = new Settings(
      homePosition: new MapPosition(center: new LatLng(51.0, 19.0), zoom: 15.0),
      spotDetailsSettings: new SpotDetailsSettings(
        isDescriptionVisible: true,
        isLocationVisible: true,
        isWindDirectionsVisible: true,
        isWindguruVisible: true,
        isIcmVisible: true,
      ));
  
  AppContent({
    Key key,
    this.store,
    this.devDrawerBuilder,
  }): super(key: key);

  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text(AppLocalizations.of(context).spots),
        ),
        drawer: new SettingsDrawer(),
        //endDrawer: devDrawerBuilder != null ? devDrawerBuilder(context) : null,
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
              description:
                  AppLocalizations.of(context).zalewSulejowskiDescription,
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
      ),
    );
  }
}
