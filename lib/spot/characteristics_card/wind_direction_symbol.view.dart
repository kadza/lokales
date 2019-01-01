import 'package:flutter/material.dart';

import './wind_direction_symbol.painter.dart';
import '../spot.model.dart';

class WindDirectionSymbol extends StatelessWidget {
  final Iterable<WindDirection> windDirections;

  WindDirectionSymbol({
    Key key,
    @required this.windDirections,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: new Border.all(
          color: Colors.black,
          width: 5,
        ),
      ),
      child: CustomPaint(
        size: Size(50, 50),
        foregroundPainter: WindDirectionSymbolPainter(
          color: Colors.black,
          sideLength: 50,
          windDirections: this.windDirections
        ),
      ),
    );
  }
}
