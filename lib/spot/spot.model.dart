import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

import '../row_column.model.dart';
import '../map/dynamic_map.model.dart';

part 'spot.model.g.dart';

enum WindDirection {
  N,
  NE,
  E,
  SE,
  S,
  SW,
  W,
  NW
}

@immutable
@JsonSerializable()
class SpotCharacteristics {
  final String name;
  final bool isWaterDeep;
  final Iterable<WindDirection> windDirections;
  final bool isWaterFlat;

  SpotCharacteristics({
    @required this.name,
    @required this.isWaterDeep,
    @required this.windDirections,
    @required this.isWaterFlat,
  });
  
  factory SpotCharacteristics.fromJson(Map<String, dynamic> json) => _$SpotCharacteristicsFromJson(json);

  Map<String, dynamic> toJson() => _$SpotCharacteristicsToJson(this);
}

@immutable
@JsonSerializable()
class Spot {
  final String id;
  final String name;
  final String shortName;
  final String titleImagePath;
  final List<SpotCharacteristics> characteristics;
  final CameraPosition location;
  final RowColumn icmImageLocation;
  final Uri windguruUrl;
  final Uri windyUrl;
  final String description;

  const Spot({
    @required this.id,
    @required this.location,
    @required this.name,
    @required this.shortName,
    @required this.titleImagePath,
    this.description,
    this.icmImageLocation,
    this.characteristics,
    this.windguruUrl,
    this.windyUrl,
  });
  
  factory Spot.fromJson(Map<String, dynamic> json) => _$SpotFromJson(json);

  Map<String, dynamic> toJson() => _$SpotToJson(this);
}
