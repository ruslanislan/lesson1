import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson1/app/app_state.dart';
import 'package:lesson1/app/operation.dart';
import 'package:lesson1/core/hooks/push_notification_hooks.dart';
import 'package:lesson1/features/battery/actions/get_battery_level.dart';
import 'package:lesson1/features/geolocation/actions/get_geolocation_action.dart';
import 'package:lesson1/features/weather/actions/get_weather_by_location_action.dart';
import 'package:lesson1/navigation/app_router.dart';
import 'package:lesson1/presentation/home/widgets/widgets.dart';
import 'package:lesson1/presentation/search/search_page.dart';
import 'package:lesson1/resources/resources.dart';
import 'package:lesson1/utils/extensions.dart';
import 'package:lesson1/widgets/connected_loadable.dart';

class HomePage extends HookWidget {
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
    useNotificationPermissionRequest();

    usePushNotificationToken();

    useFirebaseMessagingOpenedAppListener();
    useFirebaseMessagingForegroundListener();
    useFirebaseMessagingBackgroundListener();

    final context = useContext();
    final storeProvider = StoreProvider.of<AppState>(context, 'dispatcher');
    final dispatch = storeProvider.dispatchAsync;

    // ignore: prefer_function_declarations_over_variables
    final getGeolocationByLocation = () {
      dispatch(GetGeolocationAction())
          .then((_) => dispatch(GetWeatherByLocationAction()))
          // ignore: body_might_complete_normally_catch_error
          .catchError((error) {
        showSimpleDialog(
          context: context,
          title: Strings.oops,
          text: error.toString(),
        );
      });
    };

    final getBatteryLevel = () {
      dispatch(GetBatteryLevel()).then(
        (value) => showSimpleDialog(
          context: context,
          title: Strings.batteryLevel,
          text: storeProvider.state.battery.batteryLevel,
        ),
      );
    };

    useEffect(() {
      if (PlatformEnvironmentExtension.isTestingEnvironment) {
        return () {};
      }
      getGeolocationByLocation();
      return () {};
    }, const []);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: getGeolocationByLocation,
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
              route: const SearchPage(),
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
        onPressed: getBatteryLevel,
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.navigation,
        ),
      ),
      body: ConnectedLoadable(
        converter: (s) => [
          s.getOperationState(Operation.getGeolocation),
          s.getOperationState(Operation.getWeatherByLocation),
          s.getOperationState(Operation.getWeatherByCityName),
        ].any((element) => element.isInProgress),
        child: Column(
          children: [
            Expanded(
              child: PlatformEnvironmentExtension.isTestingEnvironment
                  ? const TestWeatherToday()
                  : const WeatherToday(),
            ),
            const WeatherDaysList(),
          ],
        ),
      ),
    );
  }
}
