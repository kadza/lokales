import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

import '../../media/media_gallery/media_gallery.action.dart';
import '../../media/media_gallery/media_gallery.container.dart';
import '../../media/media_model.dart';
import '../../row_column.model.dart';
import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class IcmCardViewModel{
  final Store<SpotStateContainer> store;  
  final BuildContext context;
  final Media media;

  IcmCardViewModel({
    @required this.store,
    @required this.context,
    @required this.media,
  });
  
  factory IcmCardViewModel.from(
      Store<SpotStateContainer> spotStateStore,
      BuildContext context,  
    ) {
    final selectedSpot = selectedSpotSelector(spotStateStore.state);

    return IcmCardViewModel(
      store: spotStateStore,
      context: context,
      media: Media(
        type: MediaType.Image, 
        uri: getUri(selectedSpot.icmImageLocation),
      ),
    );
  }

  void onTap() {
    this.store.dispatch(
      AddMediaAction(
        media: this.media,
      )
    );
    
    Navigator.of(this.context).push(
      MaterialPageRoute(
        builder: (context) {
          return MediaGallery(
            onDispose: () => this.store.dispatch(ClearMediaAction())
          );
        }
      ),
    );
  }
  
  static Uri getUri(RowColumn location){
    return Uri.tryParse("${getIcmForecastUri(location)}&${getDateQueryParamater()}");
  }

  static String getIcmForecastUri(RowColumn location) {
    return "http://www.meteo.pl/um/metco/mgram_pict.php?ntype=0u&row=${location.row}&col=${location.column}&lang=pl";
  }

  static String getDateQueryParamater() {
    var now = new DateTime.now();
    var dateFormatter = new DateFormat('YYYYYMMDDHH');
    return "date=${dateFormatter.format(now)}";
  }
}