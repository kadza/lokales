import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './spot/spot_list_page/spot_list_page.container.dart';
import 'l10n/app_localization.dart';
import 'state.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final Store<AppState> store;
  final WidgetBuilder devDrawerBuilder;

  App({
    Key key,
    this.store,
    this.devDrawerBuilder,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp(
            localizationsDelegates: [
              const AppLocalizationsDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [
              const Locale('en', ''),
              const Locale('pl', ''),
            ],
            theme: ThemeData(
              primaryColor: Colors.black,
              fontFamily: 'Futura',
            ),
            title: 'Lokales',
            home: AppContent(store: store)));
  }
}

class AppContent extends StatelessWidget {
  final Store<AppState> store;

  AppContent({
    Key key,
    this.store,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: SpotListPage(),
    );
  }
}
