import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'spot_settings.model.g.dart';

@immutable
@JsonSerializable()
class SpotSettings {
  final bool isIcmVisible;
  final bool isWindDirectionsVisible;
  final bool isLocationVisible;
  final bool isWindguruVisible;
  final bool isDescriptionVisible;

  const SpotSettings({
    @required this.isIcmVisible,
    @required this.isWindDirectionsVisible,
    @required this.isLocationVisible,
    @required this.isWindguruVisible,
    @required this.isDescriptionVisible,
  });

  factory SpotSettings.fromJson(Map<String, dynamic> json) =>
      _$SpotSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$SpotSettingsToJson(this);
}
