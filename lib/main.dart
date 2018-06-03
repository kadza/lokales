import 'package:flutter/material.dart';
import 'spot.dart';
import 'location.dart';
import 'spot_list.dart';

void main() {
  runApp(new MaterialApp(
    theme: new ThemeData(
        primaryColor: Colors.black,
    ),
    title: 'Lokales',
    home: new Scaffold(
    appBar: new AppBar(
      title: new Text('Spoty'),
    ),
    drawer: new Drawer(
      child: new ListView(
        children: <Widget> [
          new ListTile(
            title: new Text('Adres domowy'),
            onTap: () {},
          ),
          new ListTile(
            title: new Text('Spot - widok'),
            onTap: () {},
          )
        ],
      )
    ),
    body: new SpotList(
      spots: <Spot>[
        new Spot(
          name: 'Czarnocin',
          icmImageLocation: ImageLocation(row: 423, column: 227),
          validWindDirections: ["NW", "SE"],
          location: Location(latitude: 51.608700, longitude: 19.699706 ),
          windguruUrl: Uri.parse("https://www.windguru.cz/4880"), 
        ),
        new Spot(
          name: 'Zalew Sulejowski - Karolinów',
          icmImageLocation: ImageLocation(row: 430, column: 234),
          validWindDirections: ["SW"],
          location: new Location(latitude: 51.451805, longitude: 19.971582 ),
          windguruUrl: Uri.parse("https://www.windguru.cz/32462"),
        ),
        new Spot(
          name: 'Chałupy - Chałupy 6',
          icmImageLocation: ImageLocation(row: 332, column: 206),
          validWindDirections: ["W", "SW", "S", "SE"],
          location: new Location(latitude: 54.761199, longitude: 18.499220 ),
          windguruUrl: Uri.parse("https://www.windguru.cz/597178"),
        ),
      ],
    ),
  )));
}
