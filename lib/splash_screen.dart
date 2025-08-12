import 'dart:async';
import 'package:abcxx/student_screen.dart';
import 'package:abcxx/teacher_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'home_screen.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    isLogin();

  }
  void isLogin() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool('isLogin') ?? false ;
    String? usertype = sp.getString('userType' ?? '');




    if (isLogin){

      if( usertype == 'student') {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Timer(const Duration(seconds: 9), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const StudentScreen()),
            );}
          );


        });

      }
      else if(usertype == 'teacher'){
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Timer(const Duration(seconds: 9), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const TeacherScreen()),
            );}
          );


        });


      }
      else{
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Timer(const Duration(seconds: 9), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );}
          );


        });
      }







    } else{

      WidgetsBinding.instance.addPostFrameCallback((_) {
        Timer(const Duration(seconds: 9), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );}
        );


      });
    }







  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
        height: double.infinity,
        fit: BoxFit.fitHeight,
        image: NetworkImage(
          'https://images.pexels.com/photos/1826060/pexels-photo-1826060.jpeg',
        ),
      ),
    );
  }
}
