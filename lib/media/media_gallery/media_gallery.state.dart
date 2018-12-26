import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../media_model.dart';

part 'media_gallery.state.g.dart';

@immutable
@JsonSerializable()
class MediaGalleryState {
  final Map<String, Media> entities; 
 
  MediaGalleryState({
    @required this.entities,
  });

  factory MediaGalleryState.fromJson(Map<String, dynamic> json) => _$MediaGalleryStateFromJson(json);

  Map<String, dynamic> toJson() => _$MediaGalleryStateToJson(this);
}

@JsonSerializable()
class MediaGalleryStateContainer {
  final MediaGalleryState mediaGalleryState;

  MediaGalleryStateContainer({@required this.mediaGalleryState});

  factory MediaGalleryStateContainer.fromJson(Map<String, dynamic> json) => 
    _$MediaGalleryStateContainerFromJson(json);

  Map<String, dynamic> toJson() => _$MediaGalleryStateContainerToJson(this);
}