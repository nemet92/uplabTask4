import 'package:flutter/material.dart';
import 'package:uix4/const/appColor.dart';
import 'package:uix4/const/appPath.dart';
import 'package:uix4/const/appSize.dart';
import 'package:uix4/const/appText.dart';
import 'package:uix4/secondPage.dart';
import 'package:uix4/widget/CustomElevatedButton.dart';
import 'package:uix4/widget/CustomText.dart';
import 'package:kartal/kartal.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                AppPath.registerIamge,
                scale: 0.1,
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: AppSize.appSizeHorizantal,
                child: Column(
                  children: [
                    const CustomText(
                      text: AppText.firstText,
                      fontSize: AppSize.firstTextSize,
                      fontWeight: FontWeight.bold,
                    ),
                    const CustomText(
                      text: AppText.secondText,
                      fontSize: AppSize.secondTextSize,
                    ),
                    const SizedBox(
                      height: AppSize.sizedBox,
                    ),
                    SizedBox(
                      height: context.mediaQuery.size.height * 0.1,
                      width: context.mediaQuery.size.height * 0.40,
                      child: CustomElevatedButton(
                        icon: AppPath.elevateButtonIcon,
                        borderRadius: AppSize.elevatedButtonRadius50,
                        color: AppColor.elevateButtonColor,
                        elevatedButtonText:
                            const Text(AppText.elevatedButtonText),
                        onPressed: () {
                          context.navigateToPage(const SecondPage());
                        },
                      ),
                    ),
                  ],
                ),
              )),
        ],
      )),
    );
  }
}
