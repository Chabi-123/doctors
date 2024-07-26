import 'package:flutter/material.dart';
import 'package:gridview/Page/Sign_in_page.dart';
import 'package:gridview/Page/doctor_homepage.dart';
import 'package:gridview/Page/registration_page.dart';
import 'package:gridview/Page/splash.dart';
import 'package:gridview/carosil_imported.dart';
import 'package:gridview/snakeBar.dart';
import 'package:gridview/take_image.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Registration(),
    );
  }
}
