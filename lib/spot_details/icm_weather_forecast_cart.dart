import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';

import '../l10n/app_localization.dart';
import '../location.dart';
import 'details_card.dart';

class IcmWeatherForecastCard extends StatelessWidget {
  final ImageLocation location;

  IcmWeatherForecastCard({
    Key key,
    @required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsCard(
      title: AppLocalizations.of(context).icmWeatherForecast,
      child: new FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: "${_getIcmForecastUri(location)}&${_getDateQueryParamater()}",
        height: 350.0,
      ),
    );
  }

  String _getIcmForecastUri(ImageLocation location) {
    return "http://www.meteo.pl/um/metco/mgram_pict.php?ntype=0u&row=${location.row}&col=${location.column}&lang=pl";
  }

  String _getDateQueryParamater() {
    var now = new DateTime.now();
    var dateFormatter = new DateFormat('YYYYYMMDDHH');
    return "date=${dateFormatter.format(now)}";
  }
}
