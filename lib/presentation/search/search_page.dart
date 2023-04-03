import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../app/app_state.dart';
import '../../core/app_store_connector.dart';
import '../../features/weather/actions/get_weather_by_city_name_action.dart';
import '../../fixtures/city_items.dart';
import '../../navigation/app_router.dart';
import '../../resourses/colors.dart';
import '../../resourses/images.dart';
import '../../resourses/strings.dart';
import 'widgets/cities_list_item_widget.dart';
import 'widgets/current_location_widget.dart';
import 'widgets/past_search_block.dart';
import 'widgets/search_text_field.dart';

class SearchPage extends HookWidget {
  const SearchPage({
    Key? key,
    required this.pastSearchCities,
  }) : super(key: key);
  final ValueNotifier<List<String>> pastSearchCities;

  @override
  Widget build(BuildContext context) {
    final context = useContext();
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    useListenable(focusNode);
    useListenable(pastSearchCities);
    useListenable(controller);

    // ignore: prefer_function_declarations_over_variables
    final onCityItemTap = (String city) {
      pastSearchCities.value =
          List.unmodifiable([...pastSearchCities.value, city]);
      context.dispatch(GetWeatherByCityNameAction(cityName: city));
      focusNode.unfocus();
      appRouter.goBack(context);
    };

    // ignore: prefer_function_declarations_over_variables
    final onEditingComplete = ({
      required String cityName,
    }) {
      if (cityName.isNotEmpty) {
        pastSearchCities.value =
            List.unmodifiable([...pastSearchCities.value, cityName]);
        context.dispatch(GetWeatherByCityNameAction(cityName: cityName));
        appRouter.goBack(context);
      }
    };

    return Scaffold(
      body: AppStateConnector<AppState>(
        converter: (state) => state,
        builder: (context, state) => Padding(
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
                CurrentLocationWidget(
                    locationName: state.weather.currentCity?.name ?? ''),
                const SizedBox(height: 24),
                Divider(
                  color: AppColors.deepPurple.withOpacity(0.1),
                  height: 1,
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: PastSearchBlock(
                    pastSearchCities: pastSearchCities.value,
                    onClearAllTap: () =>
                        pastSearchCities.value = List.unmodifiable([]),
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
