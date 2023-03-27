import 'dart:async';

import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter/material.dart';

import 'app/app_state.dart';
import 'app/store/store.dart';
import 'configuration/api_client.dart';
import 'configuration/weather_api_environment.dart';
import 'weather_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  const environment = WeatherApiEnvironment.staging;
  final apiClient = configureApiClient(environment);
  configureDependencyInjection(apiClient);

  final store = configureStore();

  runZonedGuarded(
      () => runApp(
            StoreProvider<AppState>(
              store: store,
              child: const WeatherApp(),
            ),
          ), (error, stack) {
    print(error);
    print(stack);
  });
}
