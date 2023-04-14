import 'package:async_redux/async_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:lesson1/api_client/weather_api_client.dart';
import 'package:lesson1/services/weather_service.dart';
import 'package:lesson1/utils/error_recorder.dart';

import '../../services/geolocation_service.dart';
import '../app_state.dart';
import 'redux_action_logger.dart';
import 'redux_action_observer.dart';

Store<AppState> configureStore() {
  final actionLogger = ReduxActionLogger();
  final actionObserver = ReduxActionObserver();

  return Store<AppState>(
    initialState: AppState.initial(),
    actionObservers: [
      actionObserver,
      actionLogger,
    ],
  );
}

void configureDependencyInjection(WeatherApiClient apiClient) {
  final geolocationService = GeolocationService();
  final weatherService = WeatherService(
    apiClient,
    ErrorRecorder(context: (WeatherService).toString()),
  );
  GetIt.I.registerSingleton<GeolocationService>(geolocationService);
  GetIt.I.registerSingleton<WeatherService>(weatherService);
}
