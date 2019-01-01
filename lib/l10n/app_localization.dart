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

  String get spotCharacteristics {
    return _localizedValues[locale.languageCode]['spot-characteristics'];
  }
  
  String get description {
    return _localizedValues[locale.languageCode]['description'];
  }

  String spotDescription(String name) {
    final key = "$name-description";
    return _localizedValues[locale.languageCode][key];
  }

  String get legend {
    return _localizedValues[locale.languageCode]['legend'];
  }

  String get validWindDirections {
    return _localizedValues[locale.languageCode]['valid-wind-directions'];
  }

  String get shallowWater {
    return _localizedValues[locale.languageCode]['shallow-water'];
  }
  
  String get deepWater {
    return _localizedValues[locale.languageCode]['deep-water'];
  }

  String get flatWater {
    return _localizedValues[locale.languageCode]['flat-water'];
  }
  
  String get waves {
    return _localizedValues[locale.languageCode]['waves'];
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