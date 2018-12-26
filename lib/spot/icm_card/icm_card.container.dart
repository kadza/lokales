import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './icm_card.view.dart';
import './icm_card.view_model.dart';
import '../../state.dart';

class IcmCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return StoreConnector<AppState, IcmCardViewModel>(
        converter: (Store<AppState> store) {
      
      return IcmCardViewModel.from(store, context);
    }, builder: (context, viewModel) {
      
      return IcmCardView(viewModel: viewModel);
    });
  }
}

