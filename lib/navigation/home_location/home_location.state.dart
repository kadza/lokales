import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../map/dynamic_map.model.dart';

part 'home_location.state.g.dart';

@immutable
@JsonSerializable()
class HomeLocationState {
  final CameraPosition homeLocation;

  HomeLocationState({@required this.homeLocation});

  factory HomeLocationState.fromJson(Map<String, dynamic> json) =>
      _$HomeLocationStateFromJson(json);

  Map<String, dynamic> toJson() => _$HomeLocationStateToJson(this);
}

@JsonSerializable()
class HomeLocationStateContainer {
  final HomeLocationState homeLocationState;

  HomeLocationStateContainer({@required this.homeLocationState});

  factory HomeLocationStateContainer.fromJson(Map<String, dynamic> json) =>
      _$HomeLocationStateContainerFromJson(json);

  Map<String, dynamic> toJson() => _$HomeLocationStateContainerToJson(this);
}
