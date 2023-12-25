import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rork_wiki/app.dart';
import 'package:rork_wiki/firebase_options.dart';

void main() async {
  //Todo: Add Widget Binding
  WidgetsFlutterBinding.ensureInitialized();
  //Todo: Initialize Local Storage
  //Todo: Await Nativesplash
  //Todo: Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

//Todo: Last checkpoint setting up dark and light app bar theme
