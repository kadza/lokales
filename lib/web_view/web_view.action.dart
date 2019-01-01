import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'web_view.action.g.dart';

@immutable
@JsonSerializable()
class InitializeWebViewAction{
  final Uri uri;
  final bool withZoom;
  final bool localStorage;

  InitializeWebViewAction({
    @required this.uri,
    @required this.withZoom,
    @required this.localStorage,
  });

  factory InitializeWebViewAction.fromJson(Map<String, dynamic> json) => _$InitializeWebViewActionFromJson(json);

  Map<String, dynamic> toJson() => _$InitializeWebViewActionToJson(this);
}

@immutable
@JsonSerializable()
class DisposeWebViewAction{
  DisposeWebViewAction();

  factory DisposeWebViewAction.fromJson(Map<String, dynamic> json) => _$DisposeWebViewActionFromJson(json);

  Map<String, dynamic> toJson() => _$DisposeWebViewActionToJson(this);
}