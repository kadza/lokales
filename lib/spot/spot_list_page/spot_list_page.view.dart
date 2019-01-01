import 'package:flutter/material.dart';

import './spot_list_page.view_model.dart';
import '../../l10n/app_localization.dart';
import '../../settings/settings_drawer.dart';
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
    return ListTile(
      onTap: () {
        onSpotTapped(spot);
      },
      title: new Text(spot.name),
    );
  }
}

class SpotListPageView extends StatefulWidget {
  final SpotListPageViewModel viewModel;

  SpotListPageView({Key key, this.viewModel}) : super(key: key);

  @override
  _SpotListState createState() => new _SpotListState();
}

class _SpotListState extends State<SpotListPageView> {
  void _pushSpotDetailsPage(Spot spot) {
    widget.viewModel.selectSpot(spot.id);

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return SpotDetailsPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: new SettingsDrawer(),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  AppLocalizations.of(context).spots,
                ),
                background: Image.asset(
                  'images/tarifa.png',
                  fit: BoxFit.cover,
                ),
                centerTitle: false,
                collapseMode: CollapseMode.parallax,
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return SpotListItem(
                spot: this.widget.viewModel.spotList[index],
                onSpotTapped: _pushSpotDetailsPage,
              );
            }, childCount: this.widget.viewModel.spotList.length)),
          ],
        ));
  }
}
