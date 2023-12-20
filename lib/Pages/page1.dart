import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
          child: Text(
        'Page1',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
