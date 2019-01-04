// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_location.action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetHomeLocationAction _$SetHomeLocationActionFromJson(
    Map<String, dynamic> json) {
  return SetHomeLocationAction(
      homeLocation: json['homeLocation'] == null
          ? null
          : CameraPosition.fromJson(
              json['homeLocation'] as Map<String, dynamic>));
}

Map<String, dynamic> _$SetHomeLocationActionToJson(
        SetHomeLocationAction instance) =>
    <String, dynamic>{'homeLocation': instance.homeLocation};

HomeLocationSetIsPromptVisibleAction
    _$HomeLocationSetIsPromptVisibleActionFromJson(Map<String, dynamic> json) {
  return HomeLocationSetIsPromptVisibleAction(
      isPromptVisible: json['isPromptVisible'] as bool);
}

Map<String, dynamic> _$HomeLocationSetIsPromptVisibleActionToJson(
        HomeLocationSetIsPromptVisibleAction instance) =>
    <String, dynamic>{'isPromptVisible': instance.isPromptVisible};
