import 'package:flutter/material.dart';
import 'package:uix4/widget/CustomText.dart';

import '../const/appText.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    Key? key,
    required this.elevatedButtonText,
    required this.elevatebuttonColor,
    required this.onPressed,
    this.icon,
  }) : super(key: key);
  final String elevatedButtonText;
  final Color? elevatebuttonColor;
  final IconData? icon;
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: elevatebuttonColor),
        onPressed: () {
          onPressed();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(text: AppText.elevatedButtonText),
            Icon(icon),
          ],
        ));
  }
}
