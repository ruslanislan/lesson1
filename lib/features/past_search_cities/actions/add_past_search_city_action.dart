import 'dart:async';

import 'package:lesson1/app/app_state.dart';
import 'package:lesson1/app/base_action.dart';

class AddPastSearchCityAction extends BaseAction {
  AddPastSearchCityAction(this.city);

  final String city;

  @override
  Future<AppState?> reduce() async {
    return state
        .rebuild((p0) => p0..pastSearchCities.pastSearchCities.add(city));
  }
}
