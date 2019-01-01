import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dynamic_map.model.dart';

part 'dynamic_map.action.g.dart';

@immutable
@JsonSerializable()
class AnimateMapAction {
  final String clientId;
  final CameraPosition cameraPosition;

  AnimateMapAction({@required this.clientId, @required this.cameraPosition});

  factory AnimateMapAction.fromJson(Map<String, dynamic> json) =>
      _$AnimateMapActionFromJson(json);

  Map<String, dynamic> toJson() => _$AnimateMapActionToJson(this);
}

@immutable
@JsonSerializable()
class InitializeMapAction {
  final String clientId;
  final CameraPosition cameraPosition;

  InitializeMapAction({@required this.clientId, @required this.cameraPosition});

  factory InitializeMapAction.fromJson(Map<String, dynamic> json) =>
      _$InitializeMapActionFromJson(json);

  Map<String, dynamic> toJson() => _$InitializeMapActionToJson(this);
}

@immutable
@JsonSerializable()
class DisposeMapAction {
  final String clientId;

  DisposeMapAction({@required this.clientId});

  factory DisposeMapAction.fromJson(Map<String, dynamic> json) =>
      _$DisposeMapActionFromJson(json);

  Map<String, dynamic> toJson() => _$DisposeMapActionToJson(this);
}
