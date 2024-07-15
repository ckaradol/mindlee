import 'package:flutter/material.dart';

class AppLightTheme {
  static ThemeData themeData() {
    return ThemeData.light(useMaterial3: true).copyWith(
      dividerColor: const Color(0xeceff31a).withOpacity(0.1),
      iconTheme: const IconThemeData(color: Color(0xff666D80), size: 20),
      scaffoldBackgroundColor: const Color(0xff000000).withOpacity(0.6),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: "Quicksand",
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),displayLarge: TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: "Quicksand",
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        displaySmall:TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: "Quicksand",
          fontWeight: FontWeight.w500,
          fontSize: 14,
        )
      ),
      canvasColor: Colors.white,
      buttonTheme: const ButtonThemeData(
          colorScheme: ColorScheme.light(background: Color(0xffFFFFFF))),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(const TextStyle(
            color: Color(0xffFFFFFF),
            fontFamily: "Quicksand",
            fontWeight: FontWeight.w600,
            fontSize: 16,
          )),
          backgroundColor: MaterialStateProperty.all(
            const Color(0xffFFFFFF),
          ),
          foregroundColor: MaterialStateProperty.all(const Color(0xff36394A)),
        ),
      ),
    );
  }
}
const dateFormat="dd.MM.yyyy";
const supportedLanguages = [
  "en",
  "tr",
];
const fallbackLocale = "en";
class AppAssets{
  static String backIcon="assets/back_icon.svg";
  static String shareIcon="assets/share.svg";
  static String editIcon="assets/edit_icon.svg";
  static String dailyBack="assets/daily_background.png";
  static String dailyScreen="assets/detail_screen.png";
  static IconData favoryNotSelected= Icons.favorite_border;
  static IconData iconMenu=  Icons.more_vert;
}
class AppSpacer {
  static double space = 24;
  static double secondSpace = 10;
  static double cardSpace = 16;
  static double threeSpace = 12;
}
