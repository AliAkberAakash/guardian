import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'di/dependency_injection.dart';
import 'ui/features/home/home_page.dart';
import 'ui/features/login/login.dart';
import 'utils/my_colors.dart';


void main() => runApp(
  MyApp(),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Hello World',
      home: LoginPage(),
      theme: ThemeData(
        primaryColor: primary,
        primaryColorDark: primary_dark,
        accentColor: accent,

        // Define the default font family.
        fontFamily: 'Montserrat',

      ),
    );
  }
}