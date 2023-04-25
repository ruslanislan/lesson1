import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson1/models/weather_day.dart';
import 'package:lesson1/resources/images.dart';

class WeatherToday extends StatefulWidget {
  const WeatherToday({
    Key? key,
    required this.weatherDay,
  }) : super(key: key);

  final WeatherDay weatherDay;

  @override
  State<WeatherToday> createState() => _WeatherTodayState();
}

class _WeatherTodayState extends State<WeatherToday>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _curve;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _initAnimation();
  }

  void _initAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _curve = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    );
    _animation = Tween<double>(begin: 0, end: 8).animate(_curve);

    _animationController.forward();

    _animationController.addStatusListener(listener);
  }

  void listener(AnimationStatus status) {
    switch (status) {
      case AnimationStatus.dismissed:
        _animationController.forward();
        break;
      case AnimationStatus.forward:
        break;
      case AnimationStatus.reverse:
        break;
      case AnimationStatus.completed:
        _animationController.reverse();
        break;
    }
  }

  @override
  void dispose() {
    _animationController.removeStatusListener(listener);
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) => Container(
            padding: EdgeInsets.only(top: _animation.value),
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
                  widget.weatherDay.icon,
                  width: 350,
                  height: 350,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 26),
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
                    widget.weatherDay.locationName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              Text(
                '${widget.weatherDay.degrees}°',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Flexible(
                child: Text(
                  widget.weatherDay.weatherDescription,
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
