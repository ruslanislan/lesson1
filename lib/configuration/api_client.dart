import 'package:dash_kit_network/dash_kit_network.dart';

import '../api_client/weather_api_client.dart';
import '../utils/debug.dart';
import 'weather_api_environment.dart';

WeatherApiClient configureApiClient(WeatherApiEnvironment environment) {
  final apiDio = _createApiDio(environment);

  final client = WeatherApiClient(
    environment: environment,
    dio: apiDio,
  );

  return client;
}

Dio _createApiDio(WeatherApiEnvironment environment) {
  final apiDio = Dio();

  // здесь мы указываем queryParameters, которые будут использоваться для всех запросов
  final map = <String, String>{
    'appid': environment.appId,
    'lang': 'ru',
    'units': 'metric',
  };

  apiDio.options.connectTimeout = const Duration(seconds: 30);
  apiDio.options.receiveTimeout = const Duration(seconds: 30);
  apiDio.options.sendTimeout = const Duration(seconds: 30);

  apiDio.options.queryParameters.addAll(map);

  debug(() {
    apiDio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
  });

  return apiDio;
}
