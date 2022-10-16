import 'package:flutter/material.dart';
import 'package:uix4/const/appColor.dart';
import 'package:uix4/const/appPath.dart';
import 'package:uix4/const/appSize.dart';
import 'package:uix4/const/appText.dart';
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
        titleTextStyle: const TextStyle(color: Colors.black),
        leading: AppPath.leadingIcon,
        iconTheme: const IconThemeData(color: Colors.black),
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
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.yellow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [CustomText(text: AppText.conatinerText)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
