import 'dart:ui';

import 'package:flutter/material.dart';

import '../spot.model.dart';

class WindDirectionSymbolPainter extends CustomPainter {
  final Color color;
  final double sideLength;
  final Iterable windDirections;

  WindDirectionSymbolPainter({
    @required this.color,
    @required this.sideLength,
    @required this.windDirections,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = this.color
      ..style = PaintingStyle.fill;

    final combinedPath = _getCombinedPath(windDirections, this.sideLength);

    canvas.drawPath(combinedPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  static Path _getCombinedPath(Iterable windDirections, double sideLength) {
    return windDirections
        .map((windDirection) => _getPath(windDirection, sideLength))
        .reduce((v, e) => Path.combine(PathOperation.union, v, e));
  }

  static Path _getPath(WindDirection windDirection, double sideLength) {
    final halfSideLength = sideLength / 2;
    final qtrSideLength = sideLength / 4;

    switch (windDirection) {
      case WindDirection.N:
        return Path()
          ..moveTo(halfSideLength, halfSideLength)
          ..lineTo(qtrSideLength, 0)
          ..lineTo(3 * qtrSideLength, 0)
          ..lineTo(halfSideLength, halfSideLength);
      case WindDirection.NE:
        return Path()
          ..moveTo(halfSideLength, halfSideLength)
          ..lineTo(3 * qtrSideLength, 0)
          ..lineTo(sideLength, 0)
          ..lineTo(sideLength, qtrSideLength)
          ..lineTo(halfSideLength, halfSideLength);
      case WindDirection.E:
        return Path()
          ..moveTo(halfSideLength, halfSideLength)
          ..lineTo(sideLength, qtrSideLength)
          ..lineTo(sideLength, 3 * qtrSideLength)
          ..lineTo(halfSideLength, halfSideLength);
      case WindDirection.SE:
        return Path()
          ..moveTo(halfSideLength, halfSideLength)
          ..lineTo(sideLength, 3 * qtrSideLength)
          ..lineTo(sideLength, sideLength)
          ..lineTo(3 * qtrSideLength, sideLength)
          ..lineTo(halfSideLength, halfSideLength);
      case WindDirection.S:
        return Path()
          ..moveTo(halfSideLength, halfSideLength)
          ..lineTo(qtrSideLength, sideLength)
          ..lineTo(3 * qtrSideLength, sideLength)
          ..lineTo(halfSideLength, halfSideLength);
      case WindDirection.SW:
        return Path()
          ..moveTo(halfSideLength, halfSideLength)
          ..lineTo(qtrSideLength, sideLength)
          ..lineTo(0, sideLength)
          ..lineTo(0, 3 * qtrSideLength)
          ..lineTo(halfSideLength, halfSideLength);
      case WindDirection.W:
        return Path()
          ..moveTo(halfSideLength, halfSideLength)
          ..lineTo(0, qtrSideLength)
          ..lineTo(0, 3 * qtrSideLength)
          ..lineTo(halfSideLength, halfSideLength);
      case WindDirection.NW:
        return Path()
          ..moveTo(halfSideLength, halfSideLength)
          ..lineTo(0, qtrSideLength)
          ..lineTo(0, 0)
          ..lineTo(qtrSideLength, 0)
          ..lineTo(halfSideLength, halfSideLength);
      default:
        throw Exception('Value not supported');
    }
  }
}
