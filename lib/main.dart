
// Topics To be Covered in Today's session:
//
// 1 - Splash screen and initState function importance
// 2 - async function
// 3 - Future functions and await keyword role
// 4 - shared preference and its usage with example
// 5 - Signup with role-based and storing data in shared preference
// 6 - Login and checking user role
// 7 - Managing user session to check if logged in or not
// 8 - Summing up what we learned


import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_screen.dart';
import 'home_screen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: const SplashScreen(),



    );
  }
}
