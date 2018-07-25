import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import '../l10n/app_localization.dart';
import 'details_card.dart';

class WebViewCard extends StatelessWidget {
  final Uri url;
  final String title;

  WebViewCard({
    Key key,
    @required this.url,
    @required this.title,
  }) : super(key: key);

  void _pushWebView(BuildContext context) {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new WebviewScaffold(
            url: url.toString(),
            appBar: new AppBar(
              title: new Text(title),
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
    var pushWebView = () => _pushWebView(context);

    return new DetailsCard(
      title: title,
      child: RaisedButton(
        onPressed: pushWebView,
        child: Text(AppLocalizations.of(context).open),
      ),
    );
  }
}
