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
  var currentValue = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Slider')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "learn flutter",
                style: TextStyle(fontSize: currentValue),
              ),
              Slider(
                activeColor: Colors.amber,
                value: currentValue,
                min: 10,
                max: 50,
                inactiveColor: Colors.red,
                label: currentValue.toString(),
                divisions: 5,
                onChanged: (value) {
                  setState(() {
                    currentValue = value;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
