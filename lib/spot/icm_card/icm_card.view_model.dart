import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../../row_column.model.dart';
import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class IcmCardViewModel{
  final RowColumn location;

  IcmCardViewModel({@required this.location});
  
  factory IcmCardViewModel.from(
      Store<SpotStateContainer> spotStateStore) {
    final selectedSpot = selectedSpotSelector(spotStateStore.state);

    return IcmCardViewModel(location: selectedSpot.icmImageLocation);
  }
}