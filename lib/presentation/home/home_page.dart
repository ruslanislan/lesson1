import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../features/geolocation/actions/get_geolocation_action.dart';
import '../../models/weather_day.dart';
import '../../navigation/app_router.dart';
import '../../resourses/images.dart';
import '../search/search_page.dart';
import 'widgets/weather_days_list.dart';
import 'widgets/weather_today.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final _chosenCity = ValueNotifier('Cupertino');
  final List<String> pastSearchCities = [];
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
    _animation = Tween<double>(begin: 0, end: 8).animate(_curve)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _animationController.forward();
        }
      });
  }

  void _getGeolocation() {
    context.dispatch(GetGeolocationAction()).then((_) {
      showSimpleDialog(
        context: context,
        title: 'Success!',
        text: 'Geolocation received',
      );
    }).catchError((error) {
      showSimpleDialog(
        context: context,
        title: 'Oops!',
        text: error.toString(),
      );
    });
  }

  void showSimpleDialog({
    required BuildContext context,
    required String title,
    required String text,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: Text(text),
          actions: [
            CupertinoDialogAction(
              onPressed: Navigator.of(context).pop,
              child: const Text("Ok"),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(Images.icLocation),
          onPressed: _getGeolocation,
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(Images.icSearch),
            onPressed: () => appRouter.goTo(
              context: context,
              route: SearchPage(
                chosenCity: _chosenCity,
                onCityChosen: () => setState(() {}),
                pastSearchCities: pastSearchCities,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: WeatherToday(
              weatherDay: days.first,
              locationName: _chosenCity.value,
              animation: _animation,
            ),
          ),
          WeatherDaysList(days: days),
        ],
      ),
    );
  }
}
