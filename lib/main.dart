import 'dart:async';

import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app/app_state.dart';
import 'app/store/store.dart';
import 'configuration/api_client.dart';
import 'configuration/weather_api_environment.dart';
import 'weather_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  const environment = WeatherApiEnvironment.staging;
  final apiClient = configureApiClient(environment);
  configureDependencyInjection(apiClient);
  await initializeDateFormatting();

  final store = configureStore();

  await initializeDateFormatting('ru_RU', null);

  runZonedGuarded(
    () => runApp(
      StoreProvider<AppState>(
        store: store,
        child: const WeatherApp(),
      ),
    ),
    FirebaseCrashlytics.instance.recordError,
  );
}
