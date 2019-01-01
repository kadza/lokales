import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './icon_symbol.view.dart';
import './wind_direction_symbol.view.dart';
import '../../l10n/app_localization.dart';
import '../../presentation/lokales_icons.dart';
import '../details_card.dart';
import '../spot.model.dart';

class CharacteristicsCardView extends StatelessWidget {
  final List<SpotCharacteristics> characteristicList;
  final VoidCallback onHelpPressed;

  CharacteristicsCardView({
    Key key,
    @required this.characteristicList,
    @required this.onHelpPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsCard(
      title: AppLocalizations.of(context).spotCharacteristics,
      child: Column(
          children: characteristicList
              .map((characteristic) => _getCharacteristics(
                    characteristic,
                    context,
                    characteristicList.length > 1,
                  ))
              .toList()),
      onHelpTap: onHelpPressed,
    );
  }

  static Widget _getCharacteristics(
    SpotCharacteristics characteristics,
    BuildContext context,
    bool isNameVisible,
  ) {
    final waterLevelIcon = characteristics.isWaterDeep
        ? Lokales.deep_water
        : Lokales.shallow_water;

    final waveIcon = characteristics.isWaterFlat ? Lokales.flat : Lokales.waves;

    return Column(
        children: () sync* {
      if (isNameVisible)
        yield Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: Text(characteristics.name),
        );
      yield Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              WindDirectionSymbol(
                windDirections: characteristics.windDirections,
              ),
              IconSymbol(icon: waterLevelIcon),
              IconSymbol(icon: waveIcon),
            ],
          ));
    }()
            .toList());
  }
}
