import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:lesson1/blocs/my_bloc_observer.dart';
import 'package:lesson1/blocs/weather/weather_bloc.dart';
import 'package:lesson1/firebase_options.dart';
import 'package:lesson1/services/geolocation_service.dart';
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

  Bloc.observer = MyBlocObserver();

  runZonedGuarded(
    () => runApp(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<GeolocationService>(
            create: (BuildContext context) => GeolocationService(),
          ),
        ],
        child: BlocProvider<WeatherBloc>(
          create: (BuildContext context) =>
              WeatherBloc(RepositoryProvider.of(context)),
          child: const WeatherApp(),
        ),
      ),
    ),
    FirebaseCrashlytics.instance.recordError,
  );
}
