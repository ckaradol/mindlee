import 'package:flutter/material.dart';
import 'package:mindlee2/screens/DailyMessageDetailScreen/daily_message_detail_screen.dart';
import 'package:mindlee2/screens/DailyMessageScreen/daily_message_screen.dart';
import 'package:mindlee2/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mindlee',
      theme: AppLightTheme.themeData(),
      home: const DailyMessageScreen(),
    );
  }
}
