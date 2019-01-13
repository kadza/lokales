import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../l10n/app_localization.dart';

class DescriptionPageView extends StatelessWidget {
  final String description;

  DescriptionPageView({
    Key key,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).description),
      ),
      body: Markdown(
        data: AppLocalizations.of(context).spotDescription(description),
      ),
    );
  }
}
