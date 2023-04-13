import 'package:flutter/material.dart';

import '../../../models/weather_day.dart';

class WeatherListItem extends StatelessWidget {
  const WeatherListItem({Key? key, required this.weatherDay}) : super(key: key);

  final WeatherDay weatherDay;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            weatherDay.dayName,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Expanded(
          child: Image.asset(
            weatherDay.icon,
            width: 24,
            height: 24,
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              '${weatherDay.degrees}°',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
      ],
    );
  }
}
