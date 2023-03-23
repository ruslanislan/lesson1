import 'package:flutter/material.dart';

import '../../fixtures/city_items.dart';
import '../../navigation/app_router.dart';
import '../../resourses/colors.dart';
import '../../resourses/images.dart';
import 'widgets/cities_list_item_widget.dart';
import 'widgets/current_location_widget.dart';
import 'widgets/past_search_block.dart';
import 'widgets/search_text_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    Key? key,
    required this.locationName,
  }) : super(key: key);
  final String locationName;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  final List<String> pastSearchCities = [];
  String? chosenCity;

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
              'Get Weather',
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
              CurrentLocationWidget(locationName: widget.locationName),
              const SizedBox(height: 24),
              Divider(
                color: AppColors.deepPurple.withOpacity(0.1),
                height: 1,
              ),
              const SizedBox(height: 24),
              PastSearchBlock(
                pastSearchCities: pastSearchCities,
                onClearAllTap: () {},
              ),
            ] else ...[
              for (var item in testCities) ...[
                CitiesListItemWidget(
                  cityItem: item,
                  onTap: () => onCityItemTap(item.city),
                ),
                Divider(
                  color: AppColors.deepPurple.withOpacity(0.1),
                  height: 1,
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }

  void onCityItemTap(String city) {
    setState(() {
      pastSearchCities.add(city);
      chosenCity = city;
      _focusNode.unfocus();
    });
  }
}
