import 'details_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WindDirectionCard extends StatelessWidget {
  final List<String> windDirections;

  WindDirectionCard({
    Key key,
    @required this.windDirections,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new DetailsCard(
      title: "Kierunki wiatru",
      child: new Text(windDirections.join(", ")),
    );
  }
}
