import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import './media_gallery.container.dart';
import './media_gallery.selector.dart';
import './media_gallery.state.dart';
import '../media_model.dart';

@immutable
class MediaGalleryViewModel {
  final BuildContext context;
  final List<Media> mediaList;
  final OnDisposeCallback onDispose;

  MediaGalleryViewModel({
    @required this.context,
    @required this.mediaList,
    @required this.onDispose,
  });

  factory MediaGalleryViewModel.from({
    Store<MediaGalleryStateContainer> store,
    BuildContext context,    
    OnDisposeCallback onDispose,
  }) { 
    final mediaList = allMediaSelector(store.state);

    return MediaGalleryViewModel(
      context: context,
      mediaList: mediaList,
      onDispose: onDispose,
    );
  }

  void dispose(){
    onDispose();
  }

  void onTap(){
    Navigator.of(context).pop();
    this.dispose();
  }
}