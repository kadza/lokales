// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_location.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeLocationData _$HomeLocationDataFromJson(Map<String, dynamic> json) {
  return HomeLocationData(
      homeLocation: json['homeLocation'] == null
          ? null
          : CameraPosition.fromJson(
              json['homeLocation'] as Map<String, dynamic>));
}

Map<String, dynamic> _$HomeLocationDataToJson(HomeLocationData instance) =>
    <String, dynamic>{'homeLocation': instance.homeLocation};

HomeLocationUi _$HomeLocationUiFromJson(Map<String, dynamic> json) {
  return HomeLocationUi(isPromptVisible: json['isPromptVisible'] as bool);
}

Map<String, dynamic> _$HomeLocationUiToJson(HomeLocationUi instance) =>
    <String, dynamic>{'isPromptVisible': instance.isPromptVisible};

HomeLocationState _$HomeLocationStateFromJson(Map<String, dynamic> json) {
  return HomeLocationState(
      data: json['data'] == null
          ? null
          : HomeLocationData.fromJson(json['data'] as Map<String, dynamic>),
      ui: json['ui'] == null
          ? null
          : HomeLocationUi.fromJson(json['ui'] as Map<String, dynamic>));
}

Map<String, dynamic> _$HomeLocationStateToJson(HomeLocationState instance) =>
    <String, dynamic>{'data': instance.data, 'ui': instance.ui};

HomeLocationStateContainer _$HomeLocationStateContainerFromJson(
    Map<String, dynamic> json) {
  return HomeLocationStateContainer(
      homeLocationState: json['homeLocationState'] == null
          ? null
          : HomeLocationState.fromJson(
              json['homeLocationState'] as Map<String, dynamic>));
}

Map<String, dynamic> _$HomeLocationStateContainerToJson(
        HomeLocationStateContainer instance) =>
    <String, dynamic>{'homeLocationState': instance.homeLocationState};
