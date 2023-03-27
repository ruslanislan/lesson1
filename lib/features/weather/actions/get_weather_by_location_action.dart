import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:get_it/get_it.dart';

import '../../../app/app_state.dart';
import '../../../app/base_action.dart';
import '../../../app/operation.dart';
import '../../../services/weather_service.dart';

class GetWeatherByLocationAction extends BaseAction {
  @override
  Operation get operationKey => Operation.getWeatherByLocation;

  @override
  Future<AppState?> reduce() async {
    final weatherService = GetIt.I.get<WeatherService>();

    final point = state.geolocation.point;

    final locality = await weatherService.getCityByLocation(point!);

    final daysWeather = await weatherService.getDaysWeather(point);

    final today = daysWeather.getToday(locationName: locality.city.name);

    final nextDays = daysWeather.getNextDays();

    return state.rebuild(
          (s) => s
        ..weather.currentCity = locality.city
        ..weather.today = today
        ..weather.nextDays = BuiltList.of(nextDays).toBuilder(),
    );
  }
}