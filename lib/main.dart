import 'package:flutter/material.dart';
import 'package:flutter_2024/Pages/page1.dart';
import 'package:flutter_2024/Pages/page2.dart';
import 'package:flutter_2024/Pages/page3.dart';

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
  var _currentIndex = 0;
  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: "menu",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.notification_add),
                label: "menu",
                backgroundColor: Colors.green)
          ],
          currentIndex: _currentIndex,
          onTap: (index) => {setState(() => _currentIndex = index)},
        ),
        appBar: AppBar(
          title: const Text('BottomNavigationBar'),
        ),
        body: Center(child: pages[_currentIndex]));
  }
}
