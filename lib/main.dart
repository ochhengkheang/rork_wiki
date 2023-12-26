import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rork_wiki/app.dart';
import 'package:rork_wiki/firebase_options.dart';

void main() async {
  //Todo: Add Widget Binding
  WidgetsFlutterBinding.ensureInitialized();
  //Todo: Initialize Local Storage
  //Todo: Await Nativesplash
  //Todo: Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Todo: Initialize dotenv
  await dotenv.load(fileName: ".env");

  runApp(const RokWikiApp());
}

// Utils
// Todo: Modifying Themes (High Priority)
// Todo: Modifying Const  (High Priority)
// Todo: Modifying Helpers  (Medium Priority)
// Todo: Modifying Validators (High Priority)
// Todo: Modifying http (Medium Priority)
// Todo: Setting Up Localizations (Low Priority)


