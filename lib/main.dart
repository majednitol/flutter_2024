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
        appBar: AppBar(title: const Text('textField')),
        body: const Padding(
          padding: EdgeInsets.all(32.0),
          child: TextField(
            keyboardType: TextInputType.number,
            // maxLines: 5,
            // obscuringCharacter: "&&",
            decoration: InputDecoration(
                hintText: "018",
                labelStyle: TextStyle(fontSize: 20),
                border: OutlineInputBorder(),
                prefix: Text("+880"),
                suffix: Text("99"),
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.phone),
                labelText: "Enter your phone"),
            obscureText: true,
          ),
        ));
  }
}
