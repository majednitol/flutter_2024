import 'package:flutter/material.dart';
import 'package:flutter_2024/Pages/HomeScreen.dart';
import 'package:flutter_2024/Pages/Student.dart';
import 'package:flutter_2024/Pages/Teacher.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  var currentValue = 'Select one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("UserType"),
                DropdownButton(
                    value: currentValue,
                    items: const [
                      DropdownMenuItem(
                        value: 'Student',
                        child: Text('Student'),
                      ),
                      DropdownMenuItem(
                        value: "Teacher",
                        child: Text('Teacher'),
                      )
                    ],
                    onChanged: (value) {
                      setState(() {
                        currentValue = value!;
                      });
                    }),
              ],
            ),
            TextFormField(
              controller: emailController,
              // keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(hintText: "Email"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Password"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Age"),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString('email', emailController.text.toString());

                sp.setString('password', passwordController.text.toString());
                sp.setString('age', ageController.text.toString());
                print(sp.getString('age'));
                sp.setBool('islogin', true);
                sp.setString('userType', currentValue);
                String? userType = sp.getString('userType');
                if (userType == 'Student') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Student()));
                } else if (userType == 'Teacher') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Teacher()));
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 700,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
