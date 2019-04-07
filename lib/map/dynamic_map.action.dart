import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dynamic_map.model.dart';

part 'dynamic_map.action.g.dart';

@immutable
@JsonSerializable()
class SetCameraPositionAction {
  final String clientId;
  final CameraPosition cameraPosition;
  final bool isCameraPositionFromMap;

  SetCameraPositionAction({
    @required this.clientId,
    @required this.cameraPosition,
    @required this.isCameraPositionFromMap,
  });

  factory SetCameraPositionAction.fromJson(Map<String, dynamic> json) =>
      _$SetCameraPositionActionFromJson(json);

  Map<String, dynamic> toJson() => _$SetCameraPositionActionToJson(this);
}
