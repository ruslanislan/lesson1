import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart'; //for date format
import '../response_model/response_model.dart';
import '../weather_description/weather_description.dart';
import '../weather_temperatures/weather_temperatures.dart';
import '../../../../resourses/images.dart';

part 'locality_day_weather.freezed.dart';

part 'locality_day_weather.g.dart';

@freezed
class LocalityDayWeather extends ResponseModel with _$LocalityDayWeather {
  factory LocalityDayWeather({
    @JsonKey(name: 'dt') required int dateTime,
    @JsonKey(name: 'weather') required List<WeatherDescription> descriptions,
    @JsonKey(name: 'temp') required WeatherTemperatures temperatures,
  }) = _LocalityDayWeather;

  factory LocalityDayWeather.fromJson(Map<String, dynamic> json) =>
      _$LocalityDayWeatherFromJson(json);

  const LocalityDayWeather._();

  String getDayName() {
    final date = DateTime.fromMillisecondsSinceEpoch(dateTime * 1000);
    return DateFormat.EEEE('ru').format(date);
  }

  WeatherDescription? _getFirstDescription() {
    return descriptions.isEmpty ? null : descriptions.first;
  }

  String getTemperatureString() => temperatures.day.round().toString();

  String getWeatherDescription() => _getFirstDescription()?.description ?? '';

  String getWeatherImagePath() {
    final shortName = _getFirstDescription()?.icon;
    if (shortName?.isNotEmpty ?? false) {
      return '${Images.pngFolder}/$shortName.png';
    }
    return '';
  }
}
