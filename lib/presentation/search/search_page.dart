import 'package:flutter/material.dart';
import 'package:lesson1/fixtures/city_items.dart';
import 'package:lesson1/navigation/app_router.dart';
import 'package:lesson1/presentation/search/widgets/widgets.dart';
import 'package:lesson1/resources/resources.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_function_declarations_over_variables
    // final onCityItemTap = (String city) {
    //   context.dispatch(AddPastSearchCityAction(city));
    //   context.dispatch(GetWeatherByCityNameAction(cityName: city));
    //   focusNode.unfocus();
    //   appRouter.goBack(context);
    // };

    // ignore: prefer_function_declarations_over_variables
    // final onEditingComplete = ({
    //   required String cityName,
    // }) {
    //   if (cityName.isNotEmpty) {
    //     context.dispatch(AddPastSearchCityAction(cityName));
    //     context.dispatch(GetWeatherByCityNameAction(cityName: cityName));
    //     appRouter.goBack(context);
    //   }
    // };

    return Scaffold(
      body: Padding(
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
              onEditingCompleted: (String value) {},
            ),
            const SizedBox(height: 32),
            if (!focusNode.hasFocus) ...[
              const CurrentLocationWidget(locationName: ''),
              const SizedBox(height: 24),
              Divider(
                color: AppColors.deepPurple.withOpacity(0.1),
                height: 1,
              ),
              const SizedBox(height: 24),
              Expanded(
                child: PastSearchBlock(
                  pastSearchCities: const [],
                  onClearAllTap: () {},
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
                    onTap: () {},
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
    );
  }
}
