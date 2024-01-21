import 'package:flutter/material.dart';
import 'package:flutter_2024/Pages/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  String age = '';
  @override
  void initState() {
    super.initState();
    islogin();
  }

  islogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    age = sp.getString('password')!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        children: [
          Container(child: Text(age.toString())),
          ElevatedButton(
              onPressed: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();
                Navigator.pop(context);
              },
              child: const Text("Logout"))
        ],
      ),
    );
  }
}
