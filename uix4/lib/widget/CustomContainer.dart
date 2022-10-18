import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:uix4/const/appColor.dart';
import 'package:uix4/const/appSize.dart';

class CustomCatagoryContainer extends StatelessWidget {
  const CustomCatagoryContainer({
    required this.icon,
    Key? key,
  }) : super(key: key);
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mediaQuery.size.height * 0.1,
      width: context.mediaQuery.size.width * 0.2,
      decoration: const BoxDecoration(
          color: AppColor.boxDecorationColor,
          borderRadius: AppSize.boxDecorationRadius50),
      child: icon,
    );
  }
}
