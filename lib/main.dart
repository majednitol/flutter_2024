import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter",
    home: const HomeScreen(),
    theme: ThemeData(primarySwatch: Colors.amber),
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
        title: const Text('Stack and positioned'),
      ),
      body: Stack(  // it like z-index
        
        children: [
          Container(height: 300, width: 300, color: Colors.red),
          Container(height: 200, width: 300, color: Colors.blue),
          Container(height: 100, width: 300, color: Colors.purple),
          Positioned(
            top: 30,
            left: 20,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.green,
              child: const Center(child: Text("Positioned")),
            ),
          )
        ],
      ),
    );
  }
}
