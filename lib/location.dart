import 'package:flutter/foundation.dart';

class Location {
  const Location({
    @required this.latitude, 
    @required this.longitude
  });
  
  final double longitude;
  final double latitude;     
}

class ImageLocation {
  const ImageLocation({
    @required this.row, 
    @required this.column
  });
  
  final int row;
  final int column;     
}