import 'package:flutter/material.dart';

import '../../../resourses/colors.dart';

class LinkText extends StatelessWidget {
  const LinkText({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppColors.deepPurple,
              fontWeight: FontWeight.w300,
            ),
      ),
    );
  }
}
