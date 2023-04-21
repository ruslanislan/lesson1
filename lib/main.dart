import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:lesson1/firebase_options.dart';
import 'weather_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  // const environment = WeatherApiEnvironment.staging;
  // final apiClient = configureApiClient(environment);
  // configureDependencyInjection(apiClient);
  await initializeDateFormatting();

  await initializeDateFormatting('ru_RU', null);

  runZonedGuarded(
    () => runApp(
        const WeatherApp()
    ),
    FirebaseCrashlytics.instance.recordError,
  );
}
