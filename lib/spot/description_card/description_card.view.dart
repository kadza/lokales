import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../l10n/app_localization.dart';
import '../details_card.dart';

class DescriptionCardView extends StatelessWidget {
  final String description;
  final VoidCallback onTap;

  DescriptionCardView({
    Key key,
    @required this.description,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DetailsCard(
        title: AppLocalizations.of(context).description,
        child: Container(
          height: 300,
          child: Markdown(
            data: AppLocalizations.of(context).spotDescription(description),
          ),
        ),
      ),
    );
  }
}
