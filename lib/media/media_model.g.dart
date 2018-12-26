// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) {
  return Media(
      type: _$enumDecodeNullable(_$MediaTypeEnumMap, json['type']),
      uri: json['uri'] == null ? null : Uri.parse(json['uri'] as String));
}

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'type': _$MediaTypeEnumMap[instance.type],
      'uri': instance.uri?.toString()
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$MediaTypeEnumMap = <MediaType, dynamic>{
  MediaType.Image: 'Image',
  MediaType.Video: 'Video'
};
