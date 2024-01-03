import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rork_wiki/app.dart';
import 'package:rork_wiki/firebase_options.dart';

void main() async {
  //Todo: Add Widget Binding
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //Todo: Initialize Local Storage

  //Todo: Await Nativesplash
  // Ensure the splash screen is shown after the first frame has drawn for the first time.
  // Preserve until the app init then remove
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //Todo: Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Todo: Initialize dotenv
  await dotenv.load(fileName: ".env");

  // Todo: Riverpod Provider Scope
  runApp(const ProviderScope(
    child: RokWikiApp(),
  ));

  // whenever your initialization is completed, remove the splash screen:
  FlutterNativeSplash.remove();
}

// Utils
// Todo: Modifying Themes (High Priority)
// Todo: Modifying Const  (High Priority)
// Todo: Modifying Helpers  (Medium Priority)
// Todo: Modifying Validators (High Priority)
// Todo: Modifying http (Medium Priority)
// Todo: Setting Up Localizations (Low Priority)


