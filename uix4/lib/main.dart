import 'package:flutter/material.dart';
import 'package:uix4/const/appColor.dart';
import 'package:uix4/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.scafoldBackgroundColor,
      ),
      home: const MyHomePage(),
    );
  }
}
