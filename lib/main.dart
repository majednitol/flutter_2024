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
        appBar: AppBar(title: const Text('ListTile')),
        body: const Column(
          children: [
            ListTile(
              title: Text("Email"),
              subtitle: Text("@gmail.com"),
              leading: Icon(Icons.email),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              title: Text("Phone"),
              subtitle: Text("Enter your phone number"),
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text("@gmail.com"),
              leading: CircleAvatar(
                child: Icon(Icons.account_circle),
              ),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text("@gmail.com"),
              leading: Icon(Icons.email),
              trailing: Icon(Icons.send),
            ),
          ],
        ));
  }
}
