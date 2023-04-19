import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson1/resources/resources.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({
    Key? key,
    required this.locationName,
  }) : super(key: key);

  final String locationName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Images.icGeoMark,
          colorFilter: const ColorFilter.mode(
            AppColors.deepPurple,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          locationName,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.deepPurple,
                fontWeight: FontWeight.w300,
              ),
        ),
      ],
    );
  }
}
