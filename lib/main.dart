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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expanded'),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.green,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.purple,
                ))
          ],
        ));
  }
}
