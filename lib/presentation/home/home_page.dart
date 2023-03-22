import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson1/presentation/home/widgets/weather_days_list.dart';
import 'package:lesson1/presentation/home/widgets/weather_today.dart';
import 'package:lesson1/resourses/images.dart';

import '../../models/weather_day.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<WeatherDay> days = [
    WeatherDay(
      dayName: 'Monday',
      icon: Images.ic01d,
      degrees: '10',
      locationName: 'Cupertino',
      weatherDescription: 'Sunny and bright',
    ),
    WeatherDay(
      dayName: 'Tuesday',
      icon: Images.ic01d,
      degrees: '15',
      locationName: 'Cupertino',
      weatherDescription: 'Sunny and bright',
    ),
    WeatherDay(
      dayName: 'Wednesday',
      icon: Images.ic02d,
      degrees: '14',
      locationName: 'Cupertino',
      weatherDescription: 'Sunny and bright',
    ),
    WeatherDay(
      dayName: 'Thursday',
      icon: Images.ic09d,
      degrees: '14',
      locationName: 'Cupertino',
      weatherDescription: 'Sunny and bright',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        leading: IconButton(
          icon: SvgPicture.asset(Images.icLocation),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(Images.icSearch),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: WeatherToday(weatherDay: days.first),
          ),
          WeatherDaysList(days: days),
        ],
      ),
    );
  }
}
