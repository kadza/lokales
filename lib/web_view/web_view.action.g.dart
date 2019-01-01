// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_view.action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitializeWebViewAction _$InitializeWebViewActionFromJson(
    Map<String, dynamic> json) {
  return InitializeWebViewAction(
      uri: json['uri'] == null ? null : Uri.parse(json['uri'] as String),
      withZoom: json['withZoom'] as bool,
      localStorage: json['localStorage'] as bool);
}

Map<String, dynamic> _$InitializeWebViewActionToJson(
        InitializeWebViewAction instance) =>
    <String, dynamic>{
      'uri': instance.uri?.toString(),
      'withZoom': instance.withZoom,
      'localStorage': instance.localStorage
    };

DisposeWebViewAction _$DisposeWebViewActionFromJson(Map<String, dynamic> json) {
  return DisposeWebViewAction();
}

Map<String, dynamic> _$DisposeWebViewActionToJson(
        DisposeWebViewAction instance) =>
    <String, dynamic>{};
