import 'package:flutter/material.dart';
import 'package:uix4/const/appSize.dart';

class CustomItemsContainer extends StatelessWidget {
  const CustomItemsContainer({
    Key? key,
    this.child,
  }) : super(key: key);
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration:
          const BoxDecoration(borderRadius: AppSize.boxDecorationRadius50),
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: child,
      ),
    );
  }
}
