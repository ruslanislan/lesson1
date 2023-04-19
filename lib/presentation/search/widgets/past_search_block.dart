import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:lesson1/presentation/search/widgets/link_text.dart';
import 'package:lesson1/presentation/search/widgets/past_search_item_widget.dart';
import 'package:lesson1/resources/resources.dart';

class PastSearchBlock extends StatefulWidget {
  const PastSearchBlock({
    required this.pastSearchCities,
    required this.onClearAllTap,
    Key? key,
  }) : super(key: key);

  final BuiltList<String> pastSearchCities;
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
              Strings.pastSearch,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            LinkText(
              text: Strings.clearAll,
              onTap: widget.onClearAllTap,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: widget.pastSearchCities.length,
            itemBuilder: (BuildContext context, int index) =>
                PastSearchItemWidget(
              city: widget.pastSearchCities[index],
              onTap: () {},
            ),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 8),
          ),
        ),
      ],
    );
  }
}
