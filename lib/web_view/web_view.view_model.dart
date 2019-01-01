import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import './web_view.state.dart';

//TODO: handle dispose

@immutable
class WebViewViewModel{
  final Uri url;
  final String title;
  final bool withZoom;
  final bool localStorage;

  WebViewViewModel({
    @required this.url, 
    @required this.title,
    @required this.withZoom,
    @required this.localStorage, 
  });
  
  factory WebViewViewModel.from(
    Store<WebViewStateContainer> store,
    String title,
  ) {
    final state = store.state.webViewState;
    
    return WebViewViewModel(
      url: state.uri, 
      title: title,
      withZoom: state.withZoom,
      localStorage: state.localStorage,
    );
  }
}