// library weather_api;
//
// import 'package:dash_kit_network/dash_kit_network.dart';
// import '../api_client/response_mappers.dart' as response_mappers;
//
// import '../models/network/responses/days_weather/days_weather.dart';
// import '../models/network/responses/forecast_weather/forecast_weather.dart';
// import '../models/network/responses/location_point/location_point.dart';
//
// class WeatherApiClient extends ApiClient {
//   WeatherApiClient({
//     required ApiEnvironment environment,
//     required Dio dio,
//     ErrorHandlerDelegate? errorHandlerDelegate,
//   }) : super(
//     environment: environment,
//     dio: dio,
//     errorHandlerDelegate: errorHandlerDelegate,
//   );
//
//   Future<ForecastWeather> getCityByLocation(LocationPoint point) {
//     return get(
//       path: 'forecast',
//       queryParams: {
//         'lat': point.lat,
//         'lon': point.lon,
//         'cnt': 1,
//       },
//       responseMapper:response_mappers.standard(
//             (data) => ForecastWeather.fromJson(data),
//       ),
//     );
//   }
//
//   Future<DaysWeather> getDaysWeather(LocationPoint point) {
//     return get(
//       path: 'onecall',
//       queryParams: {
//         'lat': point.lat,
//         'lon': point.lon,
//         'exclude': 'hourly,current,minutely,alerts',
//       },
//       responseMapper:response_mappers.standard(
//             (data) => DaysWeather.fromJson(data),
//       ),
//     );
//   }
//
//   Future<ForecastWeather> getForecastByCityName(String cityName) {
//     return get(
//       path: 'forecast', //forecast
//       queryParams: {
//         'q': cityName,
//       },
//       responseMapper: response_mappers.standard(
//             (data) => ForecastWeather.fromJson(data), //ForecastWeather
//       ),
//     );
//   }
// }