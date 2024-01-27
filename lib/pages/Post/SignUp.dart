import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _Emailcontroller = TextEditingController();
  final TextEditingController _Passwordcontroller = TextEditingController();
  void login(email, password) async {
    try {
      Response response = await post(
          Uri.parse('https://reqres.in/api/login'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('object');
      } else {
        print('field error');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _Emailcontroller,
              decoration:
                  const InputDecoration(hintText: "Enter Email Address"),
            ),
            TextFormField(
              controller: _Passwordcontroller,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(hintText: "Enter Email Paassword"),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                login(_Emailcontroller.text.toString(),
                    _Passwordcontroller.text.toString());
              },
              child: Container(
                width: 300,
                height: 40,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: const Text("Sign Up"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
