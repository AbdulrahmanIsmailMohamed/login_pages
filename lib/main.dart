import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/login/login.dart';
import 'package:flutter_application_1/modules/signup/signup.dart';
import 'package:flutter_application_1/modules/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Welcome(),
      debugShowCheckedModeBanner: false,
      routes: {
        "login": (context) => const LogIn(),
        "signup": (context) => const SignUp(),
      },
    );
  }
}
