import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lesson_localization/screens/home.dart';

class PetApp extends StatelessWidget {
  const PetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.light,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const Home(),
    );
  }
}
