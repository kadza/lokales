import 'package:flutter/material.dart';

import './spot_list.view_model.dart';
import '../spot.model.dart';
import '../spot_details_page/spot_details_page.container.dart';

typedef void SpotTappedCallback(Spot spot);

class SpotListItem extends StatelessWidget {
  SpotListItem({@required Spot spot, @required this.onSpotTapped})
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

class SpotListView extends StatefulWidget {
  final SpotListViewModel viewModel;

  SpotListView({
    Key key, 
    this.viewModel
  }) : super(key: key);

  @override
  _SpotListState createState() => new _SpotListState();
}

class _SpotListState extends State<SpotListView> {
  void _pushSpotDetailsPage(Spot spot) {
    widget.viewModel.selectSpot(spot.id);

    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return SpotDetailsPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: widget.viewModel.spotList.map((Spot spot) {
        return new SpotListItem(
          spot: spot,
          onSpotTapped: _pushSpotDetailsPage,
        );
      }).toList(),
    );
  }
}
