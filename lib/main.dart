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
        appBar: AppBar(title: const Text('SnackBar')),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text("Yay! A SnackBar!"),
                    action: SnackBarAction(label: "undo", onPressed: () {}),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text("SnackBar"))));
  }
}
