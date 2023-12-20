import 'package:flutter/material.dart';
import 'package:flutter_2024/Pages/page1.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HERO ANIMATION'),
        ),
        body: Center(
          child: CircleAvatar(
            radius: 50,
            child: GestureDetector(
              child: const Hero(
                  tag: 'show',
                  child: Icon(
                    Icons.add,
                    size: 50,
                  )),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Page1()))
              },
            ),
          ),
        ));
  }
}
