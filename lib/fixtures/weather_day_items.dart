
import 'package:lesson1/models/weather_day.dart';
import 'package:lesson1/resources/images.dart';

final testWeatherDays = <WeatherDay>[
  WeatherDay(
    dayName: 'Понедельник',
    icon: Images.ic04d,
    degrees: '17',
    locationName: 'Бишкек',
    weatherDescription: 'пасмурно',
  ),
  WeatherDay(
    dayName: 'Вторник',
    icon: Images.ic04n,
    degrees: '17',
    locationName: 'Бишкек',
    weatherDescription: 'пасмурно',
  ),
  WeatherDay(
    dayName: 'Среда',
    icon: Images.ic10n,
    degrees: '13',
    locationName: 'Бишкек',
    weatherDescription: 'пасмурно',
  ),
  WeatherDay(
    dayName: "Четверг",
    icon: Images.ic03n,
    degrees: '21',
    locationName: 'Бишкек',
    weatherDescription: 'пасмурно',
  ),
  WeatherDay(
    dayName: "Пятница",
    icon: Images.ic03n,
    degrees: '16',
    locationName: 'Бишкек',
    weatherDescription: 'пасмурно',
  ),
];
