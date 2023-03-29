import 'package:flutter/material.dart';
import 'package:lesson1/resourses/colors.dart';

import '../../../models/weather_day.dart';
import 'weather_list_item.dart';

class WeatherDaysList extends StatelessWidget {
  const WeatherDaysList({Key? key, required this.days}) : super(key: key);

  final List<WeatherDay> days;

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
        itemCount: days.length,
        itemBuilder: (BuildContext context, int index) => WeatherListItem(
          weatherDay: days[index],
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
