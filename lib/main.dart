import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lesson_localization/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ru', 'RU'),
        Locale('uz', 'UZ'),
      ],
      path: 'assets/languages',
      fallbackLocale: const Locale('en', 'US'),
      child: const PetApp(),
    ),
  );
}
