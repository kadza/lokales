import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import './web_view_card.view_model.dart';
import '../../l10n/app_localization.dart';
import '../details_card.dart';

class WebViewCardView extends StatelessWidget {
  final WebViewCardViewModel viewModel;

  WebViewCardView({
    Key key,
    @required this.viewModel,
  }) : super(key: key);

  void _pushWebView(BuildContext context) {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new WebviewScaffold(
            url: viewModel.url.toString(),
            appBar: new AppBar(
              title: new Text(viewModel.title),
            ),
            withZoom: true,
            withLocalStorage: true,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pushWebView = () => _pushWebView(context);

    return new DetailsCard(
      title: viewModel.title,
      child: RaisedButton(
        onPressed: pushWebView,
        child: Text(AppLocalizations.of(context).open),
      ),
    );
  }
}
