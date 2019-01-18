import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'settings/spot_settings.model.dart';

part 'spot.action.g.dart';

@immutable
@JsonSerializable()
class SelectSpotAction {
  final String spotId;

  SelectSpotAction({
    @required this.spotId,
  });

  factory SelectSpotAction.fromJson(Map<String, dynamic> json) =>
      _$SelectSpotActionFromJson(json);

  Map<String, dynamic> toJson() => _$SelectSpotActionToJson(this);
}

@immutable
@JsonSerializable()
class ReorderSpotCardAction {
  final int oldIndex;
  final int newIndex;

  ReorderSpotCardAction({
    this.oldIndex,
    this.newIndex,
  });

  factory ReorderSpotCardAction.fromJson(Map<String, dynamic> json) =>
      _$ReorderSpotCardActionFromJson(json);

  Map<String, dynamic> toJson() => _$ReorderSpotCardActionToJson(this);
}

@immutable
@JsonSerializable()
class ToggleSpotCardVisibilityAction {
  final SpotSettingId spotSettingId;

  ToggleSpotCardVisibilityAction({
    @required this.spotSettingId,
  });

  factory ToggleSpotCardVisibilityAction.fromJson(Map<String, dynamic> json) =>
      _$ToggleSpotCardVisibilityActionFromJson(json);

  Map<String, dynamic> toJson() => _$ToggleSpotCardVisibilityActionToJson(this);
}
