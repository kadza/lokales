import 'package:latlong/latlong.dart';

import 'location.dart';

class Spot {
  const Spot({
    this.name,
    this.validWindDirections,
    this.location,
    this.icmImageLocation,
    this.windguruUrl,
    this.description,
  });
  final String name;
  final List<String> validWindDirections;
  final LatLng location;
  final ImageLocation icmImageLocation;
  final Uri windguruUrl;
  final String description;
}
