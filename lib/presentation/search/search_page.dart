import 'package:flutter/material.dart';

import '../../fixtures/city_items.dart';
import '../../navigation/app_router.dart';
import '../../resourses/colors.dart';
import '../../resourses/images.dart';
import '../../resourses/strings.dart';
import 'widgets/cities_list_item_widget.dart';
import 'widgets/current_location_widget.dart';
import 'widgets/past_search_block.dart';
import 'widgets/search_text_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    Key? key,
    required this.chosenCity,
    required this.pastSearchCities,
    required this.onCityChosen,
  }) : super(key: key);

  final ValueNotifier<String> chosenCity;
  final List<String> pastSearchCities;
  final VoidCallback onCityChosen;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
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
              controller: _controller,
              focusNode: _focusNode,
              onTap: () => setState(() {}),
              onCloseTap: () => setState(() {
                _controller.clear();
                _focusNode.unfocus();
              }),
            ),
            const SizedBox(height: 32),
            if (!_focusNode.hasFocus) ...[
              CurrentLocationWidget(locationName: widget.chosenCity.value),
              const SizedBox(height: 24),
              Divider(
                color: AppColors.deepPurple.withOpacity(0.1),
                height: 1,
              ),
              const SizedBox(height: 24),
              Expanded(
                child: PastSearchBlock(
                  pastSearchCities: widget.pastSearchCities,
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
    );
  }

  void onCityItemTap(String city) {
    setState(() {
      widget.pastSearchCities.add(city);
      widget.chosenCity.value = city;
      _focusNode.unfocus();
    });
    widget.onCityChosen.call();
    appRouter.goBack(context);
  }
}
