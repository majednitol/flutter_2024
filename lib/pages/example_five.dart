import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_2024/Modal/product_model.dart';
import 'package:http/http.dart' as http;

class name extends StatelessWidget {
  const name({super.key});
  Future<ProductsModel> getProduct() async {
    final response = await http.get(Uri.parse(''));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductsModel.fromJson(data);
    } else {
      return ProductsModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getProduct(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else {
                    return ListView.builder(itemBuilder: (context, index) {
                      return ;
                    });
                  }
                }),
          ),
        ],
      ),
    );
  }
}
