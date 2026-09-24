import 'package:flutter/material.dart';
class HeadingText extends StatelessWidget {
  final String text;
  final Color color;

  const HeadingText(this.text, {super.key, this.color = Colors.black87});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color),
    );
  }
}
