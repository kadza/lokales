import 'package:flutter/material.dart';
import 'spot.dart';
import 'spot_details/spot_details_page.dart';

typedef void SpotTappedCallback(Spot spot);

class SpotListItem extends StatelessWidget {
  SpotListItem({Spot spot, this.onSpotTapped})
      : spot = spot,
        super(key: new ObjectKey(spot));

  final Spot spot;
  final SpotTappedCallback onSpotTapped;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        onSpotTapped(spot);
      },
      title: new Text(spot.name),
    );
  }
}

class SpotList extends StatefulWidget {
  SpotList({Key key, this.spots}) : super(key: key);
  final List<Spot> spots;

  @override
  _SpotListState createState() => new _SpotListState();
}

class _SpotListState extends State<SpotList> {
  void _pushSpotDetailsPage(Spot spot) {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return SpotDetailsPage(spot: spot);
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
        );
      }).toList(),
    );
  }
}
