import 'package:redux/redux.dart';
import 'package:uuid/uuid.dart';

import './media_gallery.action.dart';
import './media_gallery.state.dart';
import '../media_model.dart';

final mediaGalleryReducer = combineReducers<MediaGalleryState>([
  TypedReducer<MediaGalleryState, AddMediaAction>(_appendMedia),
  TypedReducer<MediaGalleryState, ClearMediaAction>(_clearMedia),
]);

MediaGalleryState _appendMedia(MediaGalleryState state, AddMediaAction action) {
  var entities = Map<String, Media>.from(state.entities);
  final uuid = Uuid();
  entities[uuid.v4()] = action.media;

  return MediaGalleryState(entities: entities);
}

MediaGalleryState _clearMedia(
    MediaGalleryState state, ClearMediaAction action) {
  return MediaGalleryState(entities: Map<String, Media>());
}
