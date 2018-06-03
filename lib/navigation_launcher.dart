import 'package:url_launcher/url_launcher.dart';
import 'location.dart';
import 'dart:io';

class NavigationLanucher{
  launchUrl(Location location) async {
    var url = _getUrl(location);
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  String _getUrl(Location location){
    if(Platform.isIOS){
      return "maps://?saddr=Current%20Location&daddr=${location.latitude},${location.longitude}";
    }

    if(Platform.isAndroid){
      return "google.navigation:q=${location.latitude},${location.longitude}"; 
    }

    throw "Platform not supported";
  }
}