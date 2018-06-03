import 'location.dart';

class Spot {
  const Spot({
    this.name, 
    this.validWindDirections,
    this.location,
    this.icmImageLocation,
    this.windguruUrl,
  });
  final String name;
  final List<String> validWindDirections;
  final Location location;
  final ImageLocation icmImageLocation;
  final Uri windguruUrl;
}