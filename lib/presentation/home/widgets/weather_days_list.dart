import 'package:flutter/material.dart';
import 'package:lesson1/fixtures/weather_day_items.dart';
import 'package:lesson1/presentation/home/widgets/weather_list_item.dart';
import 'package:lesson1/resources/resources.dart';

class WeatherDaysList extends StatelessWidget {
  const WeatherDaysList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 32,
        bottom: 60,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -8),
            blurRadius: 12,
            color: AppColors.weakBlue.withOpacity(0.05),
          )
        ],
      ),
      child: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: testWeatherDays.length,
        itemBuilder: (BuildContext context, int index) => WeatherListItem(
          weatherDay: testWeatherDays[index],
        ),
        separatorBuilder: (BuildContext context, int index) => Divider(
          color: AppColors.deepPurple.withOpacity(0.1),
          height: 16,
          thickness: 1,
        ),
      ),
    );
  }
}
