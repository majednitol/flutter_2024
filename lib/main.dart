import 'package:flutter/material.dart';
import 'package:flutter_2024/provider/data_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ChangeNotifierProvider<DataProvider>(
            create: (context) => DataProvider(),
            child: Consumer<DataProvider>(
              builder: (context, provider, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(provider.eligibilityMessage.toString()),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: "Enter your age",
                          border: OutlineInputBorder()),
                      onChanged: (val) =>
                          {provider.checkEligibity(int.parse(val))},
                    )
                  ],
                );
              },
            )),
      ),
    );
  }
}
