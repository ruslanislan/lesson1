import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson1/models/weather_day.dart';
import 'package:lesson1/resources/resources.dart';

class TestWeatherToday extends StatelessWidget {
  const TestWeatherToday({
    Key? key, required this.weatherDay,
  }) : super(key: key);

  final WeatherDay weatherDay;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipRect(
          child: Align(
            alignment: Alignment.centerRight,
            widthFactor: 0.5,
            heightFactor: 1.0,
            child: Image.asset(
              weatherDay.icon,
              width: 350,
              height: 350,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SvgPicture.asset(Images.icGeoMark),
                  const SizedBox(width: 4),
                  Text(
                    weatherDay.locationName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              Text(
                '${weatherDay.degrees}°',
                style: Theme.of(context).textTheme.displayLarge,
                textScaleFactor: 1.0,
              ),
              Flexible(
                child: Text(
                  weatherDay.weatherDescription,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
