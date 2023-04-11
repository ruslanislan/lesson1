import 'dart:async';

import 'package:lesson1/app/app_state.dart';
import 'package:lesson1/app/base_action.dart';

class GetAllPastSearchCitiesAction extends BaseAction {
  @override
  FutureOr<AppState?> reduce() {
    return state.rebuild((p0) => p0);
  }
}
