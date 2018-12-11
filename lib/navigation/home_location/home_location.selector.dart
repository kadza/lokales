import '../../map/dynamic_map.model.dart';

import './home_location.state.dart';

CameraPosition homeLocationSelector(HomeLocationStateContainer state) => 
  state.homeLocationState.homeLocation;