import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final FontWeight weight;
  final String text;
  final Color color;
  AppText({
    required this.text,
    this.weight = FontWeight.normal,
    required this.size,
    this.color = Colors.black
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
