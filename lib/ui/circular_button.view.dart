import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CircularButtonView extends StatelessWidget {
  final Icon icon;
  final VoidCallback onTap;

  CircularButtonView({
    @required this.icon,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: new Border.all(
            color: Colors.black,
            width: 5,
          ),
        ),
        child: IconButton(
          color: Colors.black,
          iconSize: 40,
          icon: this.icon,
          onPressed: this.onTap,
        ));
  }
}
