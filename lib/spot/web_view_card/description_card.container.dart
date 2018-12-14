import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../state.dart';
import './web_view_card.view_model.dart';
import './web_view_card.view.dart';

class WebViewCard extends StatelessWidget {
  final String title;

  WebViewCard({@required this.title});

  @override
  Widget build(BuildContext context) {
    
    return StoreConnector<AppState, WebViewCardViewModel>(
        converter: (Store<AppState> store) {
      
      return WebViewCardViewModel.from(store, this.title);
    }, builder: (context, viewModel) {
      
      return WebViewCardView(viewModel: viewModel,);
    });
  }
}

