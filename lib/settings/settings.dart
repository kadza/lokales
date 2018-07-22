import 'package:flutter/foundation.dart';
import 'package:flutter_map/flutter_map.dart';

class Settings {
  Settings({
    @required this.homePosition, 
  });

  MapPosition homePosition;
}