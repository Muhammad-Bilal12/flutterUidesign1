import 'package:flutter/material.dart';
import 'package:rps_ui_e1/pages/detail_page.dart';
import 'package:rps_ui_e1/pages/homepage.dart';
import 'package:rps_ui_e1/screens/LandingPage.dart';
import 'package:rps_ui_e1/utils/constants.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth =
        window.physicalSize.width; //comes from import ''dart:ui'
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real State App design',
      theme: ThemeData(
        scaffoldBackgroundColor: COLOR_WHITE,
        primaryColor: COLOR_WHITE,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: COLOR_DARK_BLUE),
        textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
        fontFamily: "Montserrat",
      ),
      home: DetailScreen(),
    );
  }
}
