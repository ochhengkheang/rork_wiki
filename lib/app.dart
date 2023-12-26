import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rork_wiki/screens/wrapper.dart';
import 'package:rork_wiki/utils/themes/themes.dart';

class RokWikiApp extends StatelessWidget {
  const RokWikiApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Using platform-specific widget to adapat to the platform changes
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
          title: 'Rork Wiki',
          home: Wrapper(),
        ),
      ),
    );
  }
}
