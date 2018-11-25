import 'package:flutter_map/flutter_map.dart';
import './home_location.state.dart';

MapPosition homeLocationSelector(HomeLocationState state) => state.homeLocation;