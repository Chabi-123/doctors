import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gridview/Page/doctor_homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (builder) => doctorInfo()),
                (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/loding.gif'))
          ),
        ),
      ),
    );
  }
}
