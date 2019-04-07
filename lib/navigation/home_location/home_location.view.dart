import 'package:flutter/material.dart';

import './home_location.state.dart';
import '../../l10n/app_localization.dart';
import '../../map/dynamic_map.view.dart';
import 'home_location.view_model.dart';

class HomeLocationView extends StatelessWidget {
  final HomeLocationViewModel viewModel;

  HomeLocationView({this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).pinHomeLocation),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Stack(
          children: () sync* {
            yield DynamicMap(
              clientId: clientId,
            );
            yield Center(
              child: Icon(Icons.location_on),
            );
            if (viewModel.isPromptVisible)
              yield AlertDialog(
                content:
                    Text(AppLocalizations.of(context).pinHomeLocationPrompt),
                actions: <Widget>[
                  FlatButton(
                    child: Text(AppLocalizations.of(context).close),
                    onPressed: viewModel.hidePrompt,
                  )
                ],
              );
          }()
              .toList(),
        ),
      ),
    );
  }
}
