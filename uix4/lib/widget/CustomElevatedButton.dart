import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    Key? key,
    required this.elevatedButtonText,
    required this.color,
    required this.onPressed,
    this.icon,
    this.borderRadius,
  }) : super(key: key);
  final Widget elevatedButtonText;
  final Color? color;
  final IconData? icon;
  Function onPressed;
  final dynamic borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      onPressed: () {
        onPressed();
      },
      icon: elevatedButtonText,
      label: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(icon),
        ],
      ),
    );
  }
}
