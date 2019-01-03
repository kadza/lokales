import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class IconSymbol extends StatelessWidget {
  final IconData icon;

  IconSymbol({
    Key key,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.black,
          width: 5,
        ),
      ),
      child: Padding(
          padding: EdgeInsets.all(5),
          child: Icon(
            this.icon,
            color: Colors.black,
            size: 40,
          )),
    );
  }
}
