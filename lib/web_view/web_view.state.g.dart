// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_view.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebViewState _$WebViewStateFromJson(Map<String, dynamic> json) {
  return WebViewState(
      uri: json['uri'] == null ? null : Uri.parse(json['uri'] as String),
      withZoom: json['withZoom'] as bool,
      localStorage: json['localStorage'] as bool);
}

Map<String, dynamic> _$WebViewStateToJson(WebViewState instance) =>
    <String, dynamic>{
      'uri': instance.uri?.toString(),
      'withZoom': instance.withZoom,
      'localStorage': instance.localStorage
    };

WebViewStateContainer _$WebViewStateContainerFromJson(
    Map<String, dynamic> json) {
  return WebViewStateContainer(
      webViewState: json['webViewState'] == null
          ? null
          : WebViewState.fromJson(
              json['webViewState'] as Map<String, dynamic>));
}

Map<String, dynamic> _$WebViewStateContainerToJson(
        WebViewStateContainer instance) =>
    <String, dynamic>{'webViewState': instance.webViewState};
