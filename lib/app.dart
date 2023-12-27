import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rork_wiki/screens/wrapper.dart';
import 'package:rork_wiki/utils/themes/themes.dart';

class RokWikiApp extends StatelessWidget {
  const RokWikiApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Using platform-specific widget package to adapat to the platform changes
    // https://pub.dev/packages/flutter_platform_widgets/example
    return PlatformProvider(
      initialPlatform: TargetPlatform.iOS,
      settings: PlatformSettingsData(
        iosUsesMaterialWidgets: true,
        iosUseZeroPaddingForAppbarPlatformIcon: true,
      ),
      builder: (context) => PlatformTheme(
        themeMode: ThemeMode.system,
        materialLightTheme: MyTheme.materialLightTheme, // light theme
        materialDarkTheme: MyTheme.materialDarkTheme, // dark theme
        cupertinoLightTheme: MyTheme.cupertinoLightTheme, // light theme
        cupertinoDarkTheme: MyTheme.cupertinoDarkTheme, // dark theme
        builder: (context) => const PlatformApp(
          localizationsDelegates: <LocalizationsDelegate<dynamic>>[
            DefaultMaterialLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
            DefaultWidgetsLocalizations.delegate,
          ],
          title: 'Rork Wiki',
          home: Wrapper(),
        ),
      ),
    );
  }
}
