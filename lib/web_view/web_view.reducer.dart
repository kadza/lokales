import 'package:redux/redux.dart';

import './web_view.action.dart';
import './web_view.state.dart';

final webViewReducer = combineReducers<WebViewState>([
  TypedReducer<WebViewState, InitializeWebViewAction>(_initialize),
  TypedReducer<WebViewState, DisposeWebViewAction>(_dispose),
]);

WebViewState _initialize(WebViewState state, InitializeWebViewAction action){
  return WebViewState(
    uri: action.uri, 
    withZoom: action.withZoom,
    localStorage: action.localStorage,  
  );
}

WebViewState _dispose(WebViewState state, DisposeWebViewAction action){
  return null;
}