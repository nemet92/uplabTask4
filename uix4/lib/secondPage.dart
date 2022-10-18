import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:uix4/const/appColor.dart';
import 'package:uix4/const/appPath.dart';
import 'package:uix4/const/appSize.dart';
import 'package:uix4/const/appText.dart';
import 'package:uix4/widget/CustomContainer.dart';
import 'package:uix4/widget/CustomItemsContainer.dart';
import 'package:uix4/widget/CustomElevatedButton.dart';
import 'package:uix4/widget/CustomText.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppText.appTitle),
        titleTextStyle: const TextStyle(color: AppColor.appBarTitleColor),
        leading: AppPath.leadingIcon,
        iconTheme: AppColor.iconTheme,
        backgroundColor: AppColor.scafoldBackgroundColor,
        elevation: 0,
        actions: const [AppPath.actionsIcon],
      ),
      body: Padding(
        padding: AppSize.appSizeHorizantal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: AppText.helloSam,
              fontSize: AppSize.helloSaySize,
              fontWeight: FontWeight.bold,
            ),
            CustomSizedBox(25),
            Container(
              width: double.infinity,
              height: context.mediaQuery.size.height * 0.3,
              decoration: const BoxDecoration(
                  color: AppColor.boxDecorationColor,
                  borderRadius: AppSize.boxDecorationPadding),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      fontSize: AppSize.boxDecorationTextSize25,
                      text: AppText.conatinerText,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomSizedBox(60),
                    SizedBox(
                      height: context.mediaQuery.size.height * 0.08,
                      width: context.mediaQuery.size.width * 0.35,
                      child: CustomElevatedButton(
                          borderRadius: AppSize.boxDecorationElevatedButton,
                          elevatedButtonText:
                              const Text(AppText.elevatedButtonBoxdecoration),
                          color: AppColor.elevateButtonColor,
                          onPressed: () {}),
                    )
                  ],
                ),
              ),
            ),
            CustomSizedBox(25),
            const CustomText(
              text: AppText.catagoryText,
              fontSize: AppSize.catagoryTextFontsize,
              fontWeight: FontWeight.bold,
            ),
            CustomSizedBox(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomCatagoryContainer(
                  icon: AppPath.iconCatagories,
                ),
                CustomCatagoryContainer(
                  icon: AppPath.iconCatagories,
                ),
                CustomCatagoryContainer(
                  icon: AppPath.iconCatagories,
                ),
                CustomCatagoryContainer(
                  icon: AppPath.iconCatagories,
                ),
              ],
            ),
            CustomSizedBox(15),
            const CustomText(
              text: AppText.catagoryPopularText,
              fontSize: AppSize.catagoryTextFontsize,
              fontWeight: FontWeight.bold,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomItemsContainer(
                    child: Image.asset(
                  AppPath.iconCatagoriesPopuler,
                )),
                CustomItemsContainer(
                    child: Image.asset(
                  AppPath.iconCatagoriesPopuler,
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox CustomSizedBox(double heigth) {
    return SizedBox(
      height: heigth,
    );
  }
}
