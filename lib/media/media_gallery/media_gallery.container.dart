import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './media_gallery.view.dart';
import './media_gallery.view_model.dart';
import '../../state.dart';

typedef void OnDisposeCallback();

class MediaGallery extends StatelessWidget {
  final OnDisposeCallback onDispose;

  MediaGallery({@required this.onDispose});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MediaGalleryViewModel>(
        converter: (Store<AppState> store) {
      return MediaGalleryViewModel.from(
        context: context,
        store: store,
        onDispose: this.onDispose,
      );
    }, builder: (context, viewModel) {
      return new MediaGalleryView(
        viewModel: viewModel,
      );
    });
  }
}
