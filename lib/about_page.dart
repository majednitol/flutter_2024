import 'package:flutter/material.dart';
import 'package:flutter_2024/app_controller.dart';
import 'package:get/get.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('About Page'),
        ),
        body: Obx(
          () => Container(
            child: Center(
              child: Text(
                appController.n.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
        ));
  }
}
