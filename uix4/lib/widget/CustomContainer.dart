import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.heigth,
    required this.width,
    required this.color,
    required this.radius,
    this.padding,
    this.child,
  }) : super(key: key);
  final double? heigth;
  final double? width;
  final Color? color;
  final dynamic radius;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigth,
      width: width,
      decoration: BoxDecoration(color: color, borderRadius: radius),
      child: child,
    );
  }
}
