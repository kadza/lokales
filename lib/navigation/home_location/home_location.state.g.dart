// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_location.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeLocationState _$HomeLocationStateFromJson(Map<String, dynamic> json) {
  return HomeLocationState(
      homeLocation: json['homeLocation'] == null
          ? null
          : CameraPosition.fromJson(
              json['homeLocation'] as Map<String, dynamic>));
}

Map<String, dynamic> _$HomeLocationStateToJson(HomeLocationState instance) =>
    <String, dynamic>{'homeLocation': instance.homeLocation};

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
