// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_gallery.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaGalleryState _$MediaGalleryStateFromJson(Map<String, dynamic> json) {
  return MediaGalleryState(
      entities: (json['entities'] as Map<String, dynamic>)?.map(
    (k, e) => MapEntry(
        k, e == null ? null : Media.fromJson(e as Map<String, dynamic>)),
  ));
}

Map<String, dynamic> _$MediaGalleryStateToJson(MediaGalleryState instance) =>
    <String, dynamic>{'entities': instance.entities};

MediaGalleryStateContainer _$MediaGalleryStateContainerFromJson(
    Map<String, dynamic> json) {
  return MediaGalleryStateContainer(
      mediaGalleryState: json['mediaGalleryState'] == null
          ? null
          : MediaGalleryState.fromJson(
              json['mediaGalleryState'] as Map<String, dynamic>));
}

Map<String, dynamic> _$MediaGalleryStateContainerToJson(
        MediaGalleryStateContainer instance) =>
    <String, dynamic>{'mediaGalleryState': instance.mediaGalleryState};
