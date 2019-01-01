import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final String title;
  final Widget child;
  final VoidCallback onHelpTap;

  DetailsCard({
    @required this.title,
    @required this.child,
    this.onHelpTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
        SizedBox(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: () sync* {
                    yield Text(
                      title,
                    );
                    if(onHelpTap != null)
                      yield IconButton(
                        icon: Icon(Icons.help_outline),
                        onPressed: onHelpTap,
                      );
                  } ().toList(),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: child,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}