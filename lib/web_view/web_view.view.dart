import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import './web_view.view_model.dart';

//TODO: loader
//TODO: no network handling
//TODO: cookies

class WebViewView extends StatelessWidget {
  final WebViewViewModel viewModel;

  WebViewView({
    @required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      url: viewModel.url.toString(),
      appBar: new AppBar(
        title: new Text(viewModel.title),
      ),
      withZoom: true,
      withLocalStorage: true,
    );
  }
}
