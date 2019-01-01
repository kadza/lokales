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
      this._store, this._context, this._windguruUrl, this._windyUrl);

  factory WeatherCardViewModel.from(
    Store<SpotStateContainer> store,
    BuildContext context,
  ) {
    final selectedSpot = selectedSpotSelector(store.state);

    return WeatherCardViewModel(
        store, 
        context, 
        selectedSpot.windguruUrl, 
        selectedSpot.windyUrl,
      );
  }

  void onWindguruTap() {
    this._onTap(this._windguruUrl, "Windguru");
  }

  void onWindyTap() {
    this._onTap(this._windyUrl, "Windy.com");
  }

  void _onTap(Uri uri, String title) {
    this._store.dispatch(
        InitializeWebViewAction(uri: uri, withZoom: true, localStorage: true));

    Navigator.of(this._context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new WebView(
            title: title,
          );
        },
      ),
    );
  }
}
