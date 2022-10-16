import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    required this.text,
    this.fontWeight,
    this.fontSize,
    Key? key,
  }) : super(key: key);
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: fontWeight, fontSize: fontSize),
    );
  }
}
