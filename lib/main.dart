import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter",
    home: const HomeScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentValue = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Rich text')),
        body: Center(
            child: RichText(
          text: const TextSpan(
              text: 'dont you have van account ',
              style: TextStyle(fontSize: 20, color: Colors.black),
              children: [
                TextSpan(
                    text: 'sign up',
                    style: TextStyle(fontSize: 20, color: Colors.red))
              ]),
        )));
  }
}
