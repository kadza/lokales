import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';
import '../../presentation/lokales_icons.dart';
import '../spot.model.dart';
import 'icon_symbol.view.dart';
import 'wind_direction_symbol.view.dart';

class LegendDialog extends StatelessWidget {
  LegendDialog({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: new Text(AppLocalizations.of(context).legend),
      children: <Widget>[
        Container(),
        _getColumnItem(
          WindDirectionSymbol(
            windDirections: [WindDirection.N],
          ),
          AppLocalizations.of(context).validWindDirections,
        ),
        _getColumnItem(
          IconSymbol(
            icon: Lokales.shallow_water,
          ),
          AppLocalizations.of(context).shallowWater,
        ),
        _getColumnItem(
          IconSymbol(
            icon: Lokales.deep_water,
          ),
          AppLocalizations.of(context).deepWater,
        ),
        _getColumnItem(
          IconSymbol(
            icon: Lokales.flat,
          ),
          AppLocalizations.of(context).flatWater,
        ),
        _getColumnItem(
          IconSymbol(
            icon: Lokales.waves,
          ),
          AppLocalizations.of(context).waves,
        ),
      ],
    );
  }

  Widget _getColumnItem(Widget item, String text) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          item,
          SizedBox(
            width: 140,
            child: Text(
              text, 
              textAlign: TextAlign.center,
            ),
          ),
        ]
      )
    );
  }
}
