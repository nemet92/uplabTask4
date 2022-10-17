import 'package:flutter/material.dart';
import 'package:uix4/const/appColor.dart';
import 'package:uix4/const/appPath.dart';
import 'package:uix4/const/appSize.dart';
import 'package:uix4/const/appText.dart';
import 'package:uix4/widget/CustomContainer.dart';
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
            CustomContainer(
              radius: AppSize.boxDecorationPadding,
              heigth: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              color: AppColor.boxDecorationColor,
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
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.35,
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
              children: [
                CustomContainer(
                  color: AppColor.boxDecorationColor,
                  heigth: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.1,
                  radius: AppSize.boxDecorationRadius50,
                  child: AppPath.iconCatagories,
                ),
                CustomContainer(
                  color: AppColor.boxDecorationColor,
                  heigth: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.1,
                  radius: AppSize.boxDecorationRadius50,
                  child: AppPath.iconCatagories,
                ),
                CustomContainer(
                  color: AppColor.boxDecorationColor,
                  heigth: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.1,
                  radius: AppSize.boxDecorationRadius50,
                  child: AppPath.iconCatagories,
                ),
                CustomContainer(
                  color: AppColor.boxDecorationColor,
                  heigth: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.1,
                  radius: AppSize.boxDecorationRadius50,
                  child: AppPath.iconCatagories,
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
                CustomContainer(
                    heigth: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: AppColor.boxDecorationColor,
                    radius: AppSize.boxDecorationRadius50,
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Image.asset(
                        AppPath.iconCatagoriesPopuler,
                      ),
                    )),
                CustomContainer(
                    heigth: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: AppColor.boxDecorationColor,
                    radius: AppSize.boxDecorationRadius50,
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Image.asset(
                        AppPath.iconCatagoriesPopuler,
                      ),
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
