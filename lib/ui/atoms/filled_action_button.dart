import 'package:flutter/material.dart';
class FilledActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool fullWidth;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  const FilledActionButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.fullWidth = false,
    this.textStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final button = ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        padding: padding,
      ),
      child: Text(label, style: textStyle),
    );
    return fullWidth ? SizedBox(width: double.infinity, child: button) : button;
  }
}
