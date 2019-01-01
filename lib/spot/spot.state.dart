import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import './settings/spot_settings.model.dart';
import './spot.model.dart';

part 'spot.state.g.dart';

@immutable
@JsonSerializable()
class SpotState {
  final Map<String, Spot> entities;
  final SpotSettings settings;
  final String selectedSpotId;

  SpotState({
    @required this.entities,
    @required this.settings,
    @required this.selectedSpotId,
  });

  factory SpotState.fromJson(Map<String, dynamic> json) =>
      _$SpotStateFromJson(json);

  Map<String, dynamic> toJson() => _$SpotStateToJson(this);
}

@immutable
@JsonSerializable()
class SpotStateContainer {
  final SpotState spotState;

  SpotStateContainer({this.spotState});

  factory SpotStateContainer.fromJson(Map<String, dynamic> json) =>
      _$SpotStateContainerFromJson(json);

  Map<String, dynamic> toJson() => _$SpotStateContainerToJson(this);
}
