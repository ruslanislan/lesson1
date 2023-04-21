import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson1/fixtures/weather_day_items.dart';
import 'package:lesson1/navigation/app_router.dart';
import 'package:lesson1/presentation/home/widgets/widgets.dart';
import 'package:lesson1/presentation/search/search_page.dart';
import 'package:lesson1/resources/resources.dart';
import 'package:lesson1/utils/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

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
              child: const Text(Strings.ok),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_function_declarations_over_variables
    // final getGeolocationByLocation = () {
    //   dispatch(GetGeolocationAction())
    //       .then((_) => dispatch(GetWeatherByLocationAction()))
    //       // ignore: body_might_complete_normally_catch_error
    //       .catchError((error) {
    //     showSimpleDialog(
    //       context: context,
    //       title: Strings.oops,
    //       text: error.toString(),
    //     );
    //   });
    // };
    //
    // final getBatteryLevel = () {
    //   dispatch(GetBatteryLevel()).then(
    //     (value) => showSimpleDialog(
    //       context: context,
    //       title: Strings.batteryLevel,
    //       text: storeProvider.state.battery.batteryLevel,
    //     ),
    //   );
    // };

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            Images.icLocation,
            colorFilter: ColorFilter.mode(
              Colors.indigo.shade900,
              BlendMode.srcIn,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => appRouter.goTo(
              context: context,
              route: SearchPage(),
            ),
            icon: SvgPicture.asset(
              Images.icSearch,
              colorFilter: ColorFilter.mode(
                Colors.indigo.shade900,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.navigation,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PlatformEnvironmentExtension.isTestingEnvironment
                ? TestWeatherToday(weatherDay: testWeatherDays.first)
                : WeatherToday(weatherDay: testWeatherDays.first),
          ),
          const WeatherDaysList(),
        ],
      ),
    );
  }
}
