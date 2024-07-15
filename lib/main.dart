import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mindlee2/background/fakeData/get_fake_data_bloc.dart';
import 'package:mindlee2/screens/DailyMessageDetailScreen/daily_message_detail_screen.dart';
import 'package:mindlee2/screens/DailyMessageScreen/daily_message_screen.dart';
import 'package:mindlee2/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  //HttpOverrides.global = MyHttpOverrides();
  runApp(
    EasyLocalization(
        supportedLocales: [
          for (var data in supportedLanguages) Locale(data),
        ],
        path: 'assets/translate',
        fallbackLocale: const Locale(fallbackLocale),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetFakeDataBloc()..add(GetFakeDateInitialEvent()),
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        title: 'Mindlee',
        theme: AppLightTheme.themeData(),
        home: const DailyMessageDetailScreen(),
      ),
    );
  }
}
