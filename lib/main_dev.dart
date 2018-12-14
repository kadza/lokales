import 'package:flutter/material.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:redux_remote_devtools/redux_remote_devtools.dart';

import './app.dart';
import './reducer.dart';
import './state.dart';
import 'navigation/navigation_launcher/navigation_launcher.epics.dart';

void main() async {
  final epicMiddleware = EpicMiddleware(launchNavigationEpic);
  
  // final remoteDevtoolsMiddleware = RemoteDevToolsMiddleware('192.168.1.176:8000');
  // await remoteDevtoolsMiddleware.connect();
  
  final store = DevToolsStore<AppState>(
    appStateReducer,
    initialState: AppState.loading(),
    middleware: [
      epicMiddleware, 
      // remoteDevtoolsMiddleware,
    ],
  );
  
  // remoteDevtoolsMiddleware.store = store;

  runApp(new App(
      store: store,
  ));
}