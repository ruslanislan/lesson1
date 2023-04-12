import 'package:lesson1/app/app_state.dart';
import 'package:lesson1/app/base_action.dart';

class AddPastSearchCityAction extends BaseAction {
  AddPastSearchCityAction(this.city);

  final String city;

  @override
  AppState? reduce() {
    return state
        .rebuild((b) => b..pastSearchCities.pastSearchCities.add(city));
  }
}
