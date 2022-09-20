import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.android,
              size: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            // Hello again!
            const Text(
              "Hello Again!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 10),
            const Text(
              "Welcome back, you\'ve been missed!",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            // email textfield
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Email'),
                        )))),
            const SizedBox(height: 10),
            // password textfield
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Password'),
                        )))),
            const SizedBox(height: 20),
            //login button
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ))
          ],
        ))));
  }
}
