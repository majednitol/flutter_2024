import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

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
  final pages = [
    Container(
      color: Colors.greenAccent,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.indigo,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.cyan,
    ),
    Container(
      color: Colors.amber,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('liquidSwipe'),
        ),
        body: LiquidSwipe(pages: pages));
  }
}
