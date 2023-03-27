import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resourses/images.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.onTap,
    required this.onCloseTap,
    required this.onEditingCompleted,
  }) : super(key: key);
  final TextEditingController controller;
  final FocusNode focusNode;
  final VoidCallback onTap;
  final VoidCallback onCloseTap;
  final void Function(String) onEditingCompleted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      onTap: onTap,
      onEditingComplete: () => onEditingCompleted(controller.text),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(
            Images.icSearch,
            colorFilter: ColorFilter.mode(
              focusNode.hasFocus ? Colors.indigo.shade900 : Colors.grey,
              BlendMode.srcIn,
            ),
          ),
        ),
        suffixIcon: focusNode.hasFocus
            ? IconButton(
                onPressed: onCloseTap,
                icon: Image.asset(Images.icClose),
              )
            : null,
      ),
    );
  }
}
