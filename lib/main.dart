import 'package:flutter/material.dart';
import 'package:spotify/view/get_started/get_started_page.dart';

void main() {
  runApp(const MyApp());
}

//
//
// ContentView.Flutter
// Spotify
//
// Welcome & Login screen
//
// Created by: Faiz Rhm

// Mark: Github
// Faiz Rhm
// https://github.com/Faiz-rhm

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
      ),
      home: const GetStartedPage(),
    );
  }
}
