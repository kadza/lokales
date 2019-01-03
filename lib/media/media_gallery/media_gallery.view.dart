import 'package:flutter/material.dart';

import './media_gallery.view_model.dart';
import '../image_hero.view.dart';

//TODO: make the image zoomable
//TODO: add support for multiple images
//TODO: split page from view

class MediaGalleryView extends StatelessWidget {
  final MediaGalleryViewModel viewModel;

  MediaGalleryView({this.viewModel});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: this._onWillPop,
      child: Scaffold(
          body: Stack(
              children: () sync* {
        if (viewModel.mediaList.isNotEmpty)
          yield Positioned.fill(
            child: ImageHero(
              media: viewModel.mediaList.first,
              onTap: () => viewModel.onTap(),
            ),
          );
        yield Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            iconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.primary,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
        );
      }()
                  .toList())),
    );
  }

  Future<bool> _onWillPop() {
    viewModel.onDispose();
    return Future.value(true);
  }
}
