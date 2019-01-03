import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dynamic_map.model.dart';

part './dynamic_map.action.g.dart';

@immutable
@JsonSerializable()
class SetCameraPositionAction {
  final String clientId;
  final CameraPosition cameraPosition;

  SetCameraPositionAction(
      {@required this.clientId, @required this.cameraPosition});

  factory SetCameraPositionAction.fromJson(Map<String, dynamic> json) =>
      _$SetCameraPositionActionFromJson(json);

  Map<String, dynamic> toJson() => _$SetCameraPositionActionToJson(this);
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
