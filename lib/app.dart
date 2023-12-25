import 'package:flutter/material.dart';
import 'package:rork_wiki/screens/wrapper.dart';
import 'package:rork_wiki/utils/themes/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: MyTheme.materialLightTheme, // light theme
      darkTheme: MyTheme.materialDarkTheme, // dark theme
      home: const Wrapper(),
    );
  }
}
