import 'package:flutter/material.dart';
import 'spot.dart';
import 'spot_details/spot_details_page.dart';
import 'package:latlong/latlong.dart';

typedef void SpotTappedCallback(Spot spot, LatLng homeLocaiton);

class SpotListItem extends StatelessWidget {
  SpotListItem({Spot spot, this.onSpotTapped, this.homeLocation})
      : spot = spot,
        super(key: new ObjectKey(spot));

  final Spot spot;
  final LatLng homeLocation;
  final SpotTappedCallback onSpotTapped;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        onSpotTapped(spot, homeLocation);
      },
      title: new Text(spot.name),
    );
  }
}

class SpotList extends StatefulWidget {
  SpotList({Key key, this.spots, this.homeLocation}) : super(key: key);
  final List<Spot> spots;
  final LatLng homeLocation;

  @override
  _SpotListState createState() => new _SpotListState();
}

class _SpotListState extends State<SpotList> {
  void _pushSpotDetailsPage(Spot spot, LatLng homeLocation) {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return SpotDetailsPage(spot: spot, homeLocation: homeLocation,);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: widget.spots.map((Spot spot) {
        return new SpotListItem(
          spot: spot,
          onSpotTapped: _pushSpotDetailsPage,
          homeLocation: widget.homeLocation,
        );
      }).toList(),
    );
  }
}
