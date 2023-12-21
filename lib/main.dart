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
        body: CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: Colors.amber,
          expandedHeight: 150,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("sliver app bar, list , grid"),
            centerTitle: true,
          ),
          pinned: true,
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            alignment: Alignment.center,
            height: 50,
            color: Colors.amber[100 * (index % 9)],
            child: Text("Amber $index"),
          );
        }, childCount: 20)),
        SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                height: 200,
                width: 200,
                color: Colors.amber[100 * (index % 9)],
                alignment: Alignment.center,
                child: Text("Amber $index"),
              );
            }),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20))
      ],
    ));
  }
}
