import 'package:freezed_annotation/freezed_annotation.dart';
import '../response_model/response_model.dart';
import '../city_item/city_item.dart';

part 'forecast_weather.freezed.dart';

part 'forecast_weather.g.dart';

@freezed
class ForecastWeather extends ResponseModel with _$ForecastWeather {
  factory ForecastWeather({
    required CityItem city,
  }) = _ForecastWeather;

  factory ForecastWeather.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherFromJson(json);

  const ForecastWeather._();
}