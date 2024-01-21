import 'package:flutter/material.dart';
import 'package:flutter_2024/Pages/SplashScreen.dart';

void main() {
  runApp(MaterialApp(
    home: const SplashScreen(),
    theme: ThemeData(primarySwatch: Colors.amber),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
  ));
}

