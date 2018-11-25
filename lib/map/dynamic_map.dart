import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';

typedef void OnPositionChangedFn(MapPosition center);

class DynamicMap extends StatelessWidget {
  final MapPosition position;
  final OnPositionChangedFn onPositionChanged;

  _onPositionChangedWrapper(MapPosition mapPosition) {
    if (!(this.position.center.latitude == mapPosition.center.latitude &&
        this.position.center.longitude == mapPosition.center.longitude))
      onPositionChanged(mapPosition);
  }

  DynamicMap({Key key, @required this.position, this.onPositionChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new FlutterMap(
      options: new MapOptions(
          plugins: [
            new CenterPointerPlugin(),
          ],
          center: this.position.center,
          zoom: this.position.zoom,
          onPositionChanged: this._onPositionChangedWrapper),
      layers: [
        new TileLayerOptions(
            urlTemplate:
                "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c']),
        new CenterPointerPluginOptions(text: ".")
      ],
    );
  }
}

class CenterPointerPluginOptions extends LayerOptions {
  final String text;
  CenterPointerPluginOptions({this.text = ""});
}

class CenterPointerPlugin implements MapPlugin {
  @override
  Widget createLayer(LayerOptions options, MapState mapState) {
    if (options is CenterPointerPluginOptions) {
      var style = new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 50.0,
        color: Colors.red,
      );
      var text = new Text(
        options.text,
        style: style,
      );
      return new Center(
        child: text,
      );
    }
    throw ("Unknown options type for CenterPointer"
        "plugin: $options");
  }

  @override
  bool supportsLayer(LayerOptions options) {
    return options is CenterPointerPluginOptions;
  }
}
