import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson1/resourses/strings.dart';

import '../../app/app_state.dart';
import '../../app/operation.dart';
import '../../features/geolocation/actions/get_geolocation_action.dart';
import '../../features/weather/actions/get_weather_by_location_action.dart';
import '../../navigation/app_router.dart';
import '../../resourses/images.dart';
import '../../widgets/connected_loadable.dart';
import '../search/search_page.dart';
import 'hooks/home_page_hooks.dart';
import 'widgets/weather_days_list.dart';
import 'widgets/weather_today.dart';

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
    final context = useContext();
    final storeProvider = StoreProvider.of<AppState>(context, 'dispatcher');
    final dispatch = storeProvider.dispatchAsync;
    final pastSearchCities = useState(<String>[]);
    final animation = useCurvedAnimation();

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

    useEffect(() {
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
              route: SearchPage(pastSearchCities: pastSearchCities.value),
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
      body: ConnectedLoadable(
        converter: (s) => [
          s.getOperationState(Operation.getGeolocation),
          s.getOperationState(Operation.getWeatherByLocation),
          s.getOperationState(Operation.getWeatherByCityName),
        ].any((element) => element.isInProgress),
        child: Column(
          children: [
            Expanded(
              child: WeatherToday(animation: animation),
            ),
            const WeatherDaysList(),
          ],
        ),
      ),
    );
  }
}
