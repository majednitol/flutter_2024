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
  var currentValue = 'choice one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('DropDownButton')),
        body: Center(
          child: Column(
            children: [
              Text(currentValue.toString()),
              DropdownButton(
                  items: const [
                    DropdownMenuItem(
                      value: 'One',
                      child: Text('one'),
                    ),
                    DropdownMenuItem(
                      value: 'two',
                      child: Text('two'),
                    ),
                    DropdownMenuItem(
                      value: 'three',
                      child: Text('three'),
                    )
                  ],
                  onChanged: (val) => setState(() {
                        currentValue = val.toString();
                      }))
            ],
          ),
        ));
  }
}
