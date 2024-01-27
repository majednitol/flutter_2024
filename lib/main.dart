import 'package:flutter/material.dart';
import 'package:flutter_2024/pages/Post/SignUp.dart';
import 'package:flutter_2024/pages/Post/upload_image.dart';

import 'package:flutter_2024/pages/example_two.dart';

void main() {
  runApp(MaterialApp(
    home: const UploadImage(),
    theme: ThemeData(primarySwatch: Colors.purple),
    // darkTheme: ThemeData.dark(),
    // themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
  ));
}
