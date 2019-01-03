import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

//TODO: loader
//TODO: no network handling
//TODO: cookies

class WebViewView extends StatelessWidget {
  final Uri url;
  final String title;
  final bool withZoom;
  final bool withLocalStorage;

  WebViewView({
    Key key,
    @required this.url,
    @required this.title,
    @required this.withZoom,
    @required this.withLocalStorage,
  });

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url.toString(),
      appBar: AppBar(
        title: Text(title),
      ),
      withZoom: withZoom,
      withLocalStorage: withLocalStorage,
    );
  }
}
