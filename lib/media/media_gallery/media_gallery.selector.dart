import './media_gallery.state.dart';
import '../media_model.dart';

List<Media> allMediaSelector(MediaGalleryStateContainer state) =>
    state.mediaGalleryState.entities.values.toList();
