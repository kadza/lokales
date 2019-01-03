import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';
import '../../media/image_hero.view.dart';
import '../../media/media_model.dart';
import '../details_card.dart';

class IcmCardView extends StatelessWidget {
  final Media media;
  final VoidCallback onPressed;

  IcmCardView({
    Key key,
    @required this.media,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsCard(
      title: AppLocalizations.of(context).icmWeatherForecast,
      child: SizedBox(
        height: 300,
        width: 300,
        child: ImageHero(
          media: media,
          onTap: onPressed,
        ),
      ),
    );
  }
}
