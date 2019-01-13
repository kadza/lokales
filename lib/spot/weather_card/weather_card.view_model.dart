import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import '../../web_view/web_view.action.dart';
import '../../web_view/web_view.container.dart';
import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class WeatherCardViewModel {
  final Store _store;
  final BuildContext _context;
  final Uri _windguruUrl;
  final Uri _windyUrl;

  WeatherCardViewModel(
    this._store,
    this._context,
    this._windguruUrl,
    this._windyUrl,
  );

  factory WeatherCardViewModel.fromStore(
    Store<SpotStateContainer> store,
    BuildContext context,
  ) {
    final selectedSpot = selectedSpotSelector(store.state);

    if (selectedSpot == null) return null;

    return WeatherCardViewModel(
      store,
      context,
      selectedSpot.windguruUrl,
      selectedSpot.windyUrl,
    );
  }

  void onWindguruPressed() {
    this._onPressed(this._windguruUrl, "Windguru");
  }

  void onWindyPressed() {
    this._onPressed(this._windyUrl, "Windy.com");
  }

  void _onPressed(Uri uri, String title) {
    this._store.dispatch(
          InitializeWebViewAction(
            uri: uri,
            withZoom: true,
            withLocalStorage: true,
          ),
        );

    Navigator.of(this._context).push(
      MaterialPageRoute(builder: (context) => WebView(title: title)),
    );
  }
}
