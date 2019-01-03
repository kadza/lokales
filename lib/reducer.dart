import 'map/dynamic_map.reducer.dart';
import 'media/media_gallery/media_gallery.reducer.dart';
import 'navigation/home_location/home_location.reducer.dart';
import 'spot/spot.reducer.dart';
import 'state.dart';
import 'web_view/web_view.reducer.dart';

AppState appStateReducer(AppState state, action) => AppState(
      homeLocationState: homeLocationReducer(state.homeLocationState, action),
      dynamicMapState: dynamicMapReducer(state.dynamicMapState, action),
      spotState: spotReducer(state.spotState, action),
      mediaGalleryState: mediaGalleryReducer(state.mediaGalleryState, action),
      webViewState: webViewReducer(state.webViewState, action),
    );
