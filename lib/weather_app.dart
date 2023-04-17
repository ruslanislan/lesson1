import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:lesson1/presentation/home/home_page.dart';
import 'package:lesson1/resources/strings.dart';
import 'package:lesson1/theme/weather_theme.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {

  final analytics = FirebaseAnalytics.instance;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        title: Strings.appName,
        theme: WeatherTheme.lightTheme,
        home: const HomePage(),
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: analytics),
        ],
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}