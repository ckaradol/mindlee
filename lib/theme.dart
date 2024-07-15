import 'package:flutter/material.dart';

class AppLightTheme {
  static ThemeData themeData() {
    return ThemeData.light(useMaterial3: true).copyWith(
     dividerColor: const Color(0xeceff31a).withOpacity(0.1),
      iconTheme: IconThemeData(color:  Color(0xff666D80),size: 20),
      scaffoldBackgroundColor: const Color(0xff000000).withOpacity(0.6),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: "Quicksand",
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
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

class AppSpacer {
  static double space = 24;
  static double secondSpace = 10;
  static double cardSpace = 16;
  static double threeSpace = 12;
}
