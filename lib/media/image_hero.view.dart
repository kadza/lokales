import 'package:flutter/material.dart';

import './media_model.dart';

//TODO: show loader
//TODO: handle network connection error

class ImageHero extends StatelessWidget {
  final Media media;
  final VoidCallback onTap;
  
  const ImageHero({ 
    this.media, 
    this.onTap, 
  });

  Widget build(BuildContext context) {
      return Hero(
        tag: media.uri,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.network(
              media.uri.toString(),
              fit: BoxFit.contain,
            ),
          ),
       ),
    );
  }
}