import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:lesson1/app/app_state.dart';
import 'package:lesson1/fixtures/weather_day_items.dart';
import 'package:lesson1/models/network/responses/city_item/city_item.dart';
import 'package:lesson1/models/network/responses/location_point/location_point.dart';
import 'package:lesson1/presentation/home/home_page.dart';

import 'utils/devices.dart';
import 'utils/setup.dart';
import 'utils/test_state_widget.dart';

void main() {
  setUpAll(() async {
    await setupEnvironment();
  });

  //Path to folder with snapshots
  const path = 'home_page';

  testGoldens(
    //Log text for test
    'Home Page should look correct',
    (tester) async {
      //State initialization

      final state = AppState.initial().rebuild(
        (b) => b.weather
          ..currentCity = CityItem(
            id: 1,
            name: 'Bishkek',
            country: 'GB',
            coord: LocationPoint(lon: 1, lat: 2),
          )
          ..today = testWeatherDays[0]
          ..nextDays = ListBuilder(
            testWeatherDays.sublist(1, 5),
          ),
      );

      //Test widget creation
      final page = TestStateWidget(
        initialState: state,
        child: const HomePage(),
      );

      await tester.pumpWidget(page);

      //multiScreenGolden will run scenarios for given devices list
      await multiScreenGolden(
        tester,
        '$path/home_page',
        devices: devicesWithDifferentTextScales(),
      );
    },
  );
}
