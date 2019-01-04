import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../map/dynamic_map.model.dart';

part 'home_location.action.g.dart';

@immutable
@JsonSerializable()
class SetHomeLocationAction {
  final CameraPosition homeLocation;

  SetHomeLocationAction({@required this.homeLocation});

  factory SetHomeLocationAction.fromJson(Map<String, dynamic> json) =>
      _$SetHomeLocationActionFromJson(json);

  Map<String, dynamic> toJson() => _$SetHomeLocationActionToJson(this);
}

@immutable
@JsonSerializable()
class HomeLocationSetIsPromptVisibleAction {
  final bool isPromptVisible;

  HomeLocationSetIsPromptVisibleAction({
    @required this.isPromptVisible,
  });

  factory HomeLocationSetIsPromptVisibleAction.fromJson(
          Map<String, dynamic> json) =>
      _$HomeLocationSetIsPromptVisibleActionFromJson(json);

  Map<String, dynamic> toJson() =>
      _$HomeLocationSetIsPromptVisibleActionToJson(this);
}
