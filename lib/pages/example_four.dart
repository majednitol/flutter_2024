import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExampleFour extends StatefulWidget {
  const ExampleFour({super.key});

  @override
  State<ExampleFour> createState() => _ExampleFourState();
}

class _ExampleFourState extends State<ExampleFour> {
  var data;

  Future<void> getUser() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {}
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
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return ListView.builder(itemBuilder: (context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ReusbaleRow(
                                  title: 'name',
                                  value: data[index]['name'].toString(),
                                ),
                                ReusbaleRow(
                                  title: 'Username',
                                  value: data[index]['username'].toString(),
                                ),
                                ReusbaleRow(
                                  title: 'address',
                                  value: data[index]['address']['street']
                                      .toString(),
                                ),
                                ReusbaleRow(
                                  title: 'Lat',
                                  value: data[index]['address']['geo']['lat']
                                      .toString(),
                                ),
                                ReusbaleRow(
                                  title: 'Lat',
                                  value: data[index]['address']['geo']['lng']
                                      .toString(),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                    }
                  }),
            ),
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
