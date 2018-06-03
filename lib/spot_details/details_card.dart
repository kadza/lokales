import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final String title;
  final Widget child;

  DetailsCard({
    Key key,
    @required this.title,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle =
        theme.textTheme.body1.copyWith(color: Colors.black);

    return Card(
      child: Column(children: <Widget>[
        SizedBox(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                  child: Text(
                    title,
                    style: titleStyle,
                  ),
                  alignment: Alignment.centerLeft,
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