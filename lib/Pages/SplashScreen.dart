import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_2024/Pages/HomeScreen.dart';
import 'package:flutter_2024/Pages/LoginScreen.dart';
import 'package:flutter_2024/Pages/Student.dart';
import 'package:flutter_2024/Pages/Teacher.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      isLogin();
    });
    super.initState();
  }

  isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool? islogin = sp.getBool('islogin');
    String? userType = sp.getString('userType');
   
    if (islogin == true) {
      if (userType == 'Student') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Student()));
      } else if (userType == 'Teacher') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Teacher()));
      }
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
          fit: BoxFit.cover,
          height: double.infinity,
          image: NetworkImage(
              'https://images.pexels.com/photos/19808876/pexels-photo-19808876/free-photo-of-misty-morning.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load')),
    );
  }
}
