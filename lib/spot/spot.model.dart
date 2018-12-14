import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

import '../row_column.model.dart';
import '../map/dynamic_map.model.dart';

part 'spot.model.g.dart';

@JsonSerializable()
class Spot {
  final String id;
  final String name;
  final List<String> validWindDirections;
  final CameraPosition location;
  final RowColumn icmImageLocation;
  final Uri windguruUrl;
  final String description;

  const Spot({
    @required this.id,
    @required this.location,
    @required this.name,
    this.description,
    this.icmImageLocation,
    this.validWindDirections,
    this.windguruUrl,
  });
  
  factory Spot.fromJson(Map<String, dynamic> json) => _$SpotFromJson(json);

  Map<String, dynamic> toJson() => _$SpotToJson(this);
}
