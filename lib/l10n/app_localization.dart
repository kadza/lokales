import 'dart:async';

import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';
import 'en.dart';
import 'pl.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': En.values,
    'pl': Pl.values,
  };

  String get spots {
    return _localizedValues[locale.languageCode]['spots'];
  }

  String get spotDetailsConfiguration {
    return _localizedValues[locale.languageCode]['spot-details-configuration'];
  }

  String get homeAddress {
    return _localizedValues[locale.languageCode]['home-address'];
  }

  String get icmWeatherForecast {
    return _localizedValues[locale.languageCode]['icm-weather-forecast'];
  }

  String get windguruWeatherForecast {
    return _localizedValues[locale.languageCode]['windguru-weather-forecast'];
  }
  
  String get spotLocation {
    return _localizedValues[locale.languageCode]['spot-location'];
  }
  
  String get navigation {
    return _localizedValues[locale.languageCode]['navigation'];
  }
  
  String get goToSpot {
    return _localizedValues[locale.languageCode]['go-to-spot'];
  }

  String get goHome {
    return _localizedValues[locale.languageCode]['go-home'];
  }
  
  String get open {
    return _localizedValues[locale.languageCode]['open'];
  }

  String get windDirections {
    return _localizedValues[locale.languageCode]['wind-directions'];
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'pl'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of AppLocalizations.
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}