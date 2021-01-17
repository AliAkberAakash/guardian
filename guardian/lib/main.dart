import 'package:flutter/material.dart';
import 'package:guardian/ui/features/login/login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:guardian/ui/features/navigation_container/navigation_container.dart';
import 'di/dependency_injection.dart';
import 'ui/features/home/home_page.dart';
import 'utils/my_colors.dart';

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
