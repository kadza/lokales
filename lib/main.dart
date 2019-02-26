import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';
import 'package:redux_remote_devtools/redux_remote_devtools.dart';

import './app.dart';
import './reducer.dart';
import './spot/spot.action.dart';
import './state.dart';
import 'navigation/navigation_launcher/navigation_launcher.epics.dart';

void main() async {
  final epicMiddleware = EpicMiddleware(launchNavigationEpic);

  final persistor = Persistor<AppState>(
    storage: FlutterStorage(
      location: FlutterSaveLocation.sharedPreferences,
    ),
    serializer: StatePersistorSerializer(),
  );

  final AppState initialState = await persistor.load();

  // final remoteDevtoolsMiddleware = RemoteDevToolsMiddleware(
  // '192.168.1.176:8000',
  // actionDecoder: Decoder(),
  // );
  // await remoteDevtoolsMiddleware.connect();

  final store = DevToolsStore<AppState>(
    appStateReducer,
    initialState: initialState ?? AppState.loading(),
    middleware: [
      epicMiddleware,
      // remoteDevtoolsMiddleware,
      persistor.createMiddleware(),
    ],
  );

  // remoteDevtoolsMiddleware.store = store;

  runApp(App(
    store: store,
  ));
}

class Decoder implements ActionDecoder {
  @override
  decode(payload) {
    final map = payload as Map<String, dynamic>;
    if (map['type'] == 'SelectSpotAction')
      return SelectSpotAction.fromJson(map);
  }
}

class StatePersistorSerializer implements StateSerializer<AppState> {
  @override
  AppState decode(Uint8List data) {
    if (data == null) return null;

    final Map<String, dynamic> jsonMap =
        jsonDecode(uint8ListToString(data)) as Map<String, dynamic>;

    return AppState.fromJson(jsonMap);
  }

  @override
  Uint8List encode(AppState state) {
    if (state == null) {
      return null;
    }

    return stringToUint8List(json.encode(state.toJson()));
  }
}
