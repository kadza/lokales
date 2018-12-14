import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class WebViewCardViewModel{
  final Uri url;
  final String title;

  WebViewCardViewModel({@required this.url, @required this.title});
  
  factory WebViewCardViewModel.from(
    Store<SpotStateContainer> spotStateStore,
    String title,
  ) {
    final selectedSpot = selectedSpotSelector(spotStateStore.state);

    return WebViewCardViewModel(url: selectedSpot.windguruUrl, title: title);
  }
}