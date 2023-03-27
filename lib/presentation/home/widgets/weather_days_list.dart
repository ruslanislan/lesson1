import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter/material.dart';
import 'package:lesson1/resourses/colors.dart';

import '../../../core/app_store_connector.dart';
import '../../../models/weather_day.dart';
import 'weather_list_item.dart';

class WeatherDaysList extends StatelessWidget {
  const WeatherDaysList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppStateConnector<BuiltList<WeatherDay>>(
        converter: (s) => s.weather.nextDays,
      builder: (context, nextDays) {
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
            itemCount: nextDays.length,
            itemBuilder: (BuildContext context, int index) => WeatherListItem(
              weatherDay: nextDays[index],
            ),
            separatorBuilder: (BuildContext context, int index) => Divider(
              color: AppColors.deepPurple.withOpacity(0.1),
              height: 16,
              thickness: 1,
            ),
          ),
        );
      }
    );
  }
}
