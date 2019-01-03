import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

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
