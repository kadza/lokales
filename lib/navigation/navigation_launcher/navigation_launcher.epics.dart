import 'dart:async';
import 'dart:io';

import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:url_launcher/url_launcher.dart';

import './navigation_launcher.action.dart';
import '../../map/dynamic_map.model.dart';
import '../../state.dart';

Stream<dynamic> launchNavigationEpic(
    Stream<dynamic> actions, EpicStore<AppState> store) {
  return Observable(actions)
      .ofType(TypeToken<LaunchNavigationAction>())
      .asyncMap((action) {
    var url = _getUrl(action.destinationLocation);

    if (url == null) return LaunchNavigationFailureAction();

    canLaunch(url)
        .then((isLaunchable) {
          if (isLaunchable)
            launch(url);
          else
            throw Exception("Can't launch navigation");
        })
        .then((isLaunchable) => LaunchNavigationSuccessAction())
        .catchError((onError) => LaunchNavigationFailureAction());
  });
}

String _getUrl(LatLng location) {
  if (Platform.isIOS) {
    return "maps://?saddr=Current%20Location&daddr=${location.latitude},${location.longitude}";
  }

  if (Platform.isAndroid) {
    return "google.navigation:q=${location.latitude},${location.longitude}";
  }

  return null;
}
