import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_2024/Modal/user_model.dart';
import 'package:http/http.dart' as http;

class ExampleThree extends StatelessWidget {
  ExampleThree({super.key});
  List<UserModel> userList = [];
  Future<List<UserModel>> getUser() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        userList.clear();
        userList.add(UserModel.fromJson(i));
      }
      return userList;
    } else {
      return userList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Rest API'),
        ),
        body: Column(
          children: [
            Expanded(
                child: FutureBuilder(
                    future: getUser(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return ListView.builder(
                            itemCount: userList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ReusbaleRow(
                                      title: "Name",
                                      value: (userList[index].name.toString()),
                                    ),
                                    ReusbaleRow(
                                      title: "username",
                                      value:
                                          (userList[index].username.toString()),
                                    ),
                                    ReusbaleRow(
                                      title: "email",
                                      value: (userList[index].email.toString()),
                                    ),
                                    ReusbaleRow(
                                      title: "Address",
                                      value: (userList[index]
                                          .address!
                                          .geo!
                                          .lat
                                          .toString()),
                                    ),
                                  ],
                                ),
                              );
                            });
                      }
                    })),
          ],
        ));
  }
}

class ReusbaleRow extends StatelessWidget {
  String title, value;
  ReusbaleRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), Text(value)],
      ),
    );
  }
}
