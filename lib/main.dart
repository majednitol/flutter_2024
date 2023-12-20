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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar'),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.notification_add),
              ),
              Tab(icon: Icon(Icons.menu))
            ]),
          ),
          body: const TabBarView(
            children: [Page1(), Page2(), Page3()],
          )),
    );
  }
}
