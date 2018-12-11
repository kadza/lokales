import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dynamic_map.model.dart';

part 'dynamic_map.state.g.dart';

@JsonSerializable()
class DynamicMapState {
  final Map<String,CameraPosition> entities;

  DynamicMapState({@required this.entities});
  
  factory DynamicMapState.fromJson(Map<String, dynamic> json) => _$DynamicMapStateFromJson(json);

  Map<String, dynamic> toJson() => _$DynamicMapStateToJson(this);
}

@JsonSerializable()
class DynamicMapStateContainer {
  final DynamicMapState dynamicMapState;

  DynamicMapStateContainer({this.dynamicMapState});
  
  factory DynamicMapStateContainer.fromJson(Map<String, dynamic> json) => 
    _$DynamicMapStateContainerFromJson(json);

  Map<String, dynamic> toJson() => _$DynamicMapStateContainerToJson(this);
}