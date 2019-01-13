import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import './description_page.container.dart';
import '../spot.selector.dart';
import '../spot.state.dart';

@immutable
class DescriptionCardViewModel {
  final BuildContext _context;
  final String description;

  DescriptionCardViewModel(
    this._context, {
    @required this.description,
  });

  factory DescriptionCardViewModel.fromStore(
    Store<SpotStateContainer> store,
    BuildContext context,
  ) {
    final selectedSpot = selectedSpotSelector(store.state);

    if (selectedSpot == null) return null;

    return DescriptionCardViewModel(
      context,
      description: selectedSpot.description,
    );
  }

  void onTap() {
    Navigator.of(_context).push(MaterialPageRoute(
      builder: (context) => DescriptionPage(),
    ));
  }
}
