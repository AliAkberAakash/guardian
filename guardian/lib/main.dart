import 'package:flutter/material.dart';
import 'package:guardian/ui/features/login/login.dart';
//import 'package:guardian/ui/features/welcome/welcome.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    )
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      home: LoginPage(),
    );
  }
}