import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lesson1/core/app_store_connector.dart';
import 'package:lesson1/features/past_search_cities/actions/add_past_search_city_action.dart';
import 'package:lesson1/features/past_search_cities/actions/clear_past_search_cities_action.dart';
import 'package:lesson1/features/weather/actions/get_weather_by_city_name_action.dart';
import 'package:lesson1/fixtures/city_items.dart';
import 'package:lesson1/models/network/responses/city_item/city_item.dart';
import 'package:lesson1/navigation/app_router.dart';
import 'package:lesson1/presentation/search/widgets/widgets.dart';
import 'package:lesson1/resources/resources.dart';

class SearchPage extends HookWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final context = useContext();
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    useListenable(focusNode);
    useListenable(controller);

    // ignore: prefer_function_declarations_over_variables
    final onCityItemTap = (String city) {
      context.dispatch(AddPastSearchCityAction(city));
      context.dispatch(GetWeatherByCityNameAction(cityName: city));
      focusNode.unfocus();
      appRouter.goBack(context);
    };

    // ignore: prefer_function_declarations_over_variables
    final onEditingComplete = ({
      required String cityName,
    }) {
      if (cityName.isNotEmpty) {
        context.dispatch(AddPastSearchCityAction(cityName));
        context.dispatch(GetWeatherByCityNameAction(cityName: cityName));
        appRouter.goBack(context);
      }
    };

    return Scaffold(
      body: AppStateConnector<CityItem?>(
        converter: (state) => state.weather.currentCity,
        builder: (context, currentCity) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 65),
              IconButton(
                onPressed: () => AppRouter().goBack(context),
                icon: Image.asset(
                  Images.icClose,
                  width: 32,
                  height: 32,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                Strings.getWeather,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 32),
              SearchTextField(
                controller: controller,
                focusNode: focusNode,
                onCloseTap: () {
                  controller.clear();
                  focusNode.unfocus();
                },
                onEditingCompleted: (String value) => onEditingComplete(
                  cityName: value,
                ),
              ),
              const SizedBox(height: 32),
              if (!focusNode.hasFocus) ...[
                CurrentLocationWidget(locationName: currentCity?.name ?? ''),
                const SizedBox(height: 24),
                Divider(
                  color: AppColors.deepPurple.withOpacity(0.1),
                  height: 1,
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: AppStateConnector<BuiltList<String>>(
                    converter: (state) =>
                        state.pastSearchCities.pastSearchCities,
                    builder: (context, pastSearchCities) => PastSearchBlock(
                      pastSearchCities: pastSearchCities,
                      onClearAllTap: () =>
                          context.dispatch(ClearPastSearchCities()),
                    ),
                  ),
                ),
              ] else ...[
                Expanded(
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: testCities.length,
                    itemBuilder: (BuildContext context, int index) =>
                        CitiesListItemWidget(
                      cityItem: testCities[index],
                      onTap: () => onCityItemTap(testCities[index].name),
                    ),
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(
                      color: AppColors.deepPurple.withOpacity(0.1),
                      height: 1,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
