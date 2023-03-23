import 'package:flutter/material.dart';

import 'link_text.dart';
import 'past_search_item_widget.dart';

class PastSearchBlock extends StatefulWidget {
  const PastSearchBlock({
    required this.pastSearchCities,
    required this.onClearAllTap,
    Key? key,
  }) : super(key: key);
  final List<String> pastSearchCities;
  final VoidCallback onClearAllTap;

  @override
  State<PastSearchBlock> createState() => _PastSearchBlockState();
}

class _PastSearchBlockState extends State<PastSearchBlock> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Past Search',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            LinkText(
              text: 'Clear All',
              onTap: widget.onClearAllTap,
            ),
          ],
        ),
        const SizedBox(height: 16),
        for(var item in widget.pastSearchCities)...[
          PastSearchItemWidget(city: item, onTap: (){}),
          const SizedBox(height: 8)
,        ]
      ],
    );
  }
}
