import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'web_view.state.g.dart';

@immutable
@JsonSerializable()
class WebViewState {
  final Uri uri;
  final bool withZoom;
  final bool localStorage;

  WebViewState({
    @required this.uri,
    @required this.withZoom,
    @required this.localStorage,
  });

  factory WebViewState.fromJson(Map<String, dynamic> json) =>
      _$WebViewStateFromJson(json);

  Map<String, dynamic> toJson() => _$WebViewStateToJson(this);
}

@JsonSerializable()
class WebViewStateContainer {
  final WebViewState webViewState;

  WebViewStateContainer({@required this.webViewState});

  factory WebViewStateContainer.fromJson(Map<String, dynamic> json) =>
      _$WebViewStateContainerFromJson(json);

  Map<String, dynamic> toJson() => _$WebViewStateContainerToJson(this);
}
