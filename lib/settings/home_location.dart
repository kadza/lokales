import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';

typedef void OnPositionChangedFn(MapPosition homePosition);

class HomeLocation extends StatelessWidget {
  final MapPosition homePosition;
  final OnPositionChangedFn onPositionChanged;

  _onPositionChangedWrapper(MapPosition mapPosition) {
    if (!(this.homePosition.center.latitude == mapPosition.center.latitude &&
        this.homePosition.center.longitude == mapPosition.center.longitude))
      onPositionChanged(mapPosition);
  }

  HomeLocation({Key key, @required this.homePosition, this.onPositionChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Adres domowy")),
      body: new Padding(
        padding: new EdgeInsets.all(8.0),
        child: new Column(
          children: [
            new Padding(
              padding: new EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: new Text(
                  "Jeśli chcesz nawigować ze spotu, ustaw środek mapy w docelowej lokalizacji"),
            ),
            new Flexible(
              child: new FlutterMap(
                options: new MapOptions(
                    plugins: [
                      new CenterPointerPlugin(),
                    ],
                    center: homePosition.center,
                    zoom: homePosition.zoom,
                    onPositionChanged: this._onPositionChangedWrapper),
                layers: [
                  new TileLayerOptions(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c']),
                  new CenterPointerPluginOptions(text: ".")
                ],
              ),
            ),
          ],
        ),
      ),
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
