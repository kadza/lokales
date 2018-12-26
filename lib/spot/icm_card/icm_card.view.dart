import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './icm_card.view_model.dart';
import '../../l10n/app_localization.dart';
import '../../media/image_hero.view.dart';
import '../details_card.dart';

class IcmCardView extends StatelessWidget {
  final IcmCardViewModel viewModel;

  IcmCardView({@required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return DetailsCard(
      title: AppLocalizations.of(context).icmWeatherForecast,
      child: SizedBox(
        height: 300,
        width: 300,
        child: ImageHero(
          media: viewModel.media, 
          onTap: viewModel.onTap,
        ),
      ),
    );
  }
}
