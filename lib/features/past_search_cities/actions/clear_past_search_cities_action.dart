import 'package:lesson1/app/app_state.dart';
import 'package:lesson1/app/base_action.dart';

class ClearPastSearchCities extends BaseAction {

  @override
  AppState? reduce() {
    return state
        .rebuild((b) => b..pastSearchCities.pastSearchCities.clear());
  }
}