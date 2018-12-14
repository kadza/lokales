import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './spot/spot_list_page/spot_list_page.container.dart';
import 'l10n/app_localization.dart';
import 'settings/settings_drawer.dart';
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
        body: new SpotListPage(),
      ),
    );
  }
}
