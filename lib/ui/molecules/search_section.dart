import 'package:flutter/material.dart';
import '../atoms/heading_text.dart';
import '../atoms/search_text_field.dart';
class SearchSection extends StatelessWidget {
  final ValueChanged<String> onSearchChanged;
  const SearchSection({super.key, required this.onSearchChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingText('Search Products'),
        const SizedBox(height: 8),
        SearchTextField(onChanged: onSearchChanged),
      ],
    );
  }
}
