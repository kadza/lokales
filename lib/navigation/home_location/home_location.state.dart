import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_location.state.g.dart';

const String clientId = 'homeLocation';

@immutable
@JsonSerializable()
class HomeLocationUi {
  final bool isPromptVisible;

  HomeLocationUi({@required this.isPromptVisible});

  factory HomeLocationUi.fromJson(Map<String, dynamic> json) =>
      _$HomeLocationUiFromJson(json);

  Map<String, dynamic> toJson() => _$HomeLocationUiToJson(this);
}

@immutable
@JsonSerializable()
class HomeLocationState {
  final HomeLocationUi ui;

  HomeLocationState({
    @required this.ui,
  });

  factory HomeLocationState.fromJson(Map<String, dynamic> json) =>
      _$HomeLocationStateFromJson(json);

  Map<String, dynamic> toJson() => _$HomeLocationStateToJson(this);
}

@immutable
@JsonSerializable()
class HomeLocationStateContainer {
  final HomeLocationState homeLocationState;

  HomeLocationStateContainer({@required this.homeLocationState});

  factory HomeLocationStateContainer.fromJson(Map<String, dynamic> json) =>
      _$HomeLocationStateContainerFromJson(json);

  Map<String, dynamic> toJson() => _$HomeLocationStateContainerToJson(this);
}
