import 'package:lesson1/utils/error_recorder.dart';

import '../api_client/weather_api_client.dart';
import '../models/network/responses/days_weather/days_weather.dart';
import '../models/network/responses/forecast_weather/forecast_weather.dart';
import '../models/network/responses/location_point/location_point.dart';

class WeatherService {
  WeatherService(this.apiClient, this.errorRecorder);

  final WeatherApiClient apiClient;
  final ErrorRecorder errorRecorder;

  Future<ForecastWeather> getCityByLocation(LocationPoint point) {
    return apiClient
        .getCityByLocation(point)
        .onError(errorRecorder.recordError);
  }

  Future<DaysWeather> getDaysWeather(LocationPoint point) {
    return apiClient.getDaysWeather(point).onError(errorRecorder.recordError);
  }

  Future<ForecastWeather> getForecastByCityName(String cityName) {
    return apiClient
        .getForecastByCityName(cityName)
        .onError(errorRecorder.recordError);
  }
}