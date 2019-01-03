import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './web_view.view.dart';
import './web_view.view_model.dart';
import '../state.dart';

class WebView extends StatelessWidget {
  final String title;

  WebView({@required this.title});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, WebViewViewModel>(
        converter: (Store<AppState> store) {
      return WebViewViewModel.fromStore(store, this.title);
    }, builder: (context, viewModel) {
      return WebViewView(
        title: viewModel.title,
        url: viewModel.url,
        withZoom: viewModel.withZoom,
        withLocalStorage: viewModel.withLocalStorage,
      );
    });
  }
}
