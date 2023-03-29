import 'package:flutter/material.dart';

import '../../../models/city_item.dart';
import '../../../resourses/colors.dart';

class CitiesListItemWidget extends StatelessWidget {
  const CitiesListItemWidget({
    Key? key,
    required this.cityItem,
    required this.onTap,
  }) : super(key: key);

  final CityItem cityItem;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: AppColors.deepPurple.withOpacity(0.05),
      splashColor: AppColors.deepPurple.withOpacity(0.05),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Text(
              cityItem.city,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(width: 8),
            const CircleAvatar(
              radius: 2,
              backgroundColor: AppColors.deepGray,
            ),
            const SizedBox(width: 8),
            Text(
              cityItem.country,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w300,
                    color: AppColors.gray,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
