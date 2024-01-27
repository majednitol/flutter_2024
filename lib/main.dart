import 'package:flutter/material.dart';
import 'package:flutter_2024/about_page.dart';
import 'package:flutter_2024/app_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.snackbar(
                    "Downloading completed", "your song has been downloaded");
              },
              child: const Text("Snakbar")),
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Notification",
                    content: const Center(child: Text("Download")));
              },
              child: const Text("dialog")),
          ElevatedButton(
              onPressed: () {
                Get.to(const AboutPage());
              },
              child: const Text("Go to AboutPage")),
          const SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => {appController.increment()},
                child: Container(
                  child: const Icon(Icons.add),
                ),
              ),
              Obx(() => Container(
                    child: Text(
                      appController.n.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                  )),
              InkWell(
                onTap: () => {appController.decrement()},
                child: Container(
                  child: const Icon(Icons.remove),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
