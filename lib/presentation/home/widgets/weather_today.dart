import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson1/models/weather_day.dart';
import 'package:lesson1/resourses/images.dart';

class WeatherToday extends StatelessWidget {
  const WeatherToday({
    Key? key,
    required this.weatherDay,
    required this.locationName,
    required this.animation,
  }) : super(key: key);
  final WeatherDay weatherDay;
  final String locationName;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedBuilder(
          animation: animation,
          builder: (context, child) => Container(
            padding: EdgeInsets.only(top: animation.value),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  spreadRadius: 15,
                  blurRadius: 50,
                  offset: const Offset(0, 50), // changes position of shadow
                ),
              ],
            ),
            child: ClipRect(
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
          ),
        ),
        const SizedBox(width: 26),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SvgPicture.asset(Images.icGeoMark),
                const SizedBox(width: 4),
                Text(
                  locationName,
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
      ],
    );
  }
}
