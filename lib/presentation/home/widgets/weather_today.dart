import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson1/models/weather_day.dart';
import 'package:lesson1/resourses/images.dart';

class WeatherToday extends StatelessWidget {
  const WeatherToday({Key? key, required this.weatherDay}) : super(key: key);
  final WeatherDay weatherDay;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          left: -175,
          child: Image.asset(
            Images.ic01d,
            width: 350,
            height: 350,
          ),
        ),
        Positioned(
          right: 28,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              ),
              Text(
                weatherDay.weatherDescription,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        )
      ],
    );
  }
}
