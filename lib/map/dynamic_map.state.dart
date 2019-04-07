import 'dart:ui' show hashValues;

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dynamic_map.model.dart';

part 'dynamic_map.state.g.dart';

@immutable
@JsonSerializable()
class DynamicMapState {
  final Map<String, DynamicMapStateEntity> entities;

  DynamicMapState({@required this.entities});

  factory DynamicMapState.fromJson(Map<String, dynamic> json) =>
      _$DynamicMapStateFromJson(json);

  Map<String, dynamic> toJson() => _$DynamicMapStateToJson(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final DynamicMapState typedOther = other as DynamicMapState;
    return entities == typedOther.entities;
  }

  @override
  int get hashCode => entities.hashCode;
}

@immutable
@JsonSerializable()
class DynamicMapStateEntity {
  final CameraPosition cameraPosition;
  final bool isCameraPositionFromMap;
  final Set<Marker> markers;
  final bool areGesturesEnabled;

  DynamicMapStateEntity({
    @required this.cameraPosition,
    @required this.isCameraPositionFromMap,
    @required this.markers,
    @required this.areGesturesEnabled,
  });

  factory DynamicMapStateEntity.fromJson(Map<String, dynamic> json) =>
      _$DynamicMapStateEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DynamicMapStateEntityToJson(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final DynamicMapStateEntity typedOther = other as DynamicMapStateEntity;
    return cameraPosition == typedOther.cameraPosition &&
        isCameraPositionFromMap == typedOther.isCameraPositionFromMap &&
        markers == typedOther.markers &&
        areGesturesEnabled == typedOther.areGesturesEnabled;
  }

  @override
  int get hashCode => hashValues(
      cameraPosition, isCameraPositionFromMap, markers, areGesturesEnabled);
}

@JsonSerializable()
class DynamicMapStateContainer {
  final DynamicMapState dynamicMapState;

  DynamicMapStateContainer({this.dynamicMapState});

  factory DynamicMapStateContainer.fromJson(Map<String, dynamic> json) =>
      _$DynamicMapStateContainerFromJson(json);

  Map<String, dynamic> toJson() => _$DynamicMapStateContainerToJson(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final DynamicMapStateContainer typedOther =
        other as DynamicMapStateContainer;
    return dynamicMapState == typedOther.dynamicMapState;
  }

  @override
  int get hashCode => dynamicMapState.hashCode;
}
