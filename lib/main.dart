import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
        appBar: AppBar(title: const Text('Toast')),
        body: Center(
          child: ElevatedButton(
              onPressed: (() {
                Fluttertoast.showToast(
                  msg: "This is a toast",
                  toastLength: Toast.LENGTH_SHORT,
                  backgroundColor: Colors.green,
                  gravity: ToastGravity.BOTTOM,
                  textColor: Colors.white,
                );
              }),
              child: const Text("Click")),
        ));
  }
}
