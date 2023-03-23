import 'package:flutter/material.dart';

import '../../../resourses/images.dart';

class PastSearchItemWidget extends StatelessWidget {
  const PastSearchItemWidget(
      {Key? key, required this.city, required this.onTap})
      : super(key: key);
  final String city;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          city,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w300,
              ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Image.asset(
            Images.icClose,
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }
}
