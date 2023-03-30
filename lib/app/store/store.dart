import 'package:async_redux/async_redux.dart';
import 'package:get_it/get_it.dart';

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

void configureDependencyInjection() {
  final geolocationService = GeolocationService();
  GetIt.I.registerSingleton<GeolocationService>(geolocationService);
}