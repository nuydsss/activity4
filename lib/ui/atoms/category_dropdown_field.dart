import 'package:flutter/material.dart';
class CategoryDropdownField extends StatelessWidget {
  final String value;
  final List<String> categories;
  final String label;
  final ValueChanged<String?> onChanged;

  const CategoryDropdownField({
    super.key,
    required this.value,
    required this.categories,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: value,
      decoration: InputDecoration(labelText: label),
      items: categories
          .map((cat) => DropdownMenuItem(value: cat, child: Text(cat)))
          .toList(),
      onChanged: onChanged,
    );
  }
}
