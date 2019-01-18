import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../l10n/app_localization.dart';

part 'spot_settings.model.g.dart';

String getSpotSettingName(SpotSettingId id, BuildContext context) {
  switch (id) {
    case SpotSettingId.characteristics:
      return AppLocalizations.of(context).spotCharacteristics;
    case SpotSettingId.description:
      return AppLocalizations.of(context).description;
    case SpotSettingId.icm:
      return AppLocalizations.of(context).icmWeatherForecast;
    case SpotSettingId.location:
      return AppLocalizations.of(context).spotLocation;
    case SpotSettingId.navigation:
      return AppLocalizations.of(context).navigation;
    case SpotSettingId.weather:
      return AppLocalizations.of(context).weatherForecast;
    default:
      return '';
  }
}

enum SpotSettingId {
  characteristics,
  description,
  icm,
  location,
  navigation,
  weather,
}

@immutable
@JsonSerializable()
class SpotSetting {
  final bool isVisible;
  final SpotSettingId id;

  const SpotSetting({
    @required this.isVisible,
    @required this.id,
  });

  factory SpotSetting.fromJson(Map<String, dynamic> json) =>
      _$SpotSettingFromJson(json);

  Map<String, dynamic> toJson() => _$SpotSettingToJson(this);
}
