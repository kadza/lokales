import 'package:flutter/foundation.dart';

class SpotDetailsSettings {
  SpotDetailsSettings({
    @required this.isIcmVisible,
    @required this.isWindDirectionsVisible,
    @required this.isLocationVisible,
    @required this.isWindguruVisible,
    @required this.isDescriptionVisible,
  });

  bool isIcmVisible;
  bool isWindDirectionsVisible;
  bool isLocationVisible;
  bool isWindguruVisible;
  bool isDescriptionVisible;

  SpotDetailsSettings.fromJson(Map<String, dynamic> json)
      : isIcmVisible = json['isIcmVisible'],
        isWindDirectionsVisible = json['isWindDirectionsVisible'],
        isLocationVisible = json['isLocationVisible'],
        isWindguruVisible = json['isWindguruVisible'],
        isDescriptionVisible = json['isDescriptionVisible'];

  Map<String, dynamic> toJson() =>
    {
      'isIcmVisible': isIcmVisible,
      'isWindDirectionsVisible': isWindDirectionsVisible,
      'isLocationVisible': isLocationVisible,
      'isWindguruVisible': isWindguruVisible,
      'isDescriptionVisible': isDescriptionVisible,
    };
}