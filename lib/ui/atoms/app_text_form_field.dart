import 'package:flutter/material.dart';
class AppTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType? keyboardType;
  final int maxLines;
  final bool alignLabelWithHint;
  final FormFieldValidator<String>? validator;

  const AppTextFormField({
    super.key,
    required this.controller,
    required this.label,
    this.keyboardType,
    this.maxLines = 1,
    this.alignLabelWithHint = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        alignLabelWithHint: alignLabelWithHint,
      ),
      validator: validator,
    );
  }
}
