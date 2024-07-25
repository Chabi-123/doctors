import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gridview/Page/doctor_homepage.dart';
import 'package:gridview/Page/hospitalPage.dart';
class PracticeBottomNavBar extends StatefulWidget {
  const PracticeBottomNavBar({super.key});
@override
State<PracticeBottomNavBar> createState() => _PracticeBottomNavBarState();}
class _PracticeBottomNavBarState extends State<PracticeBottomNavBar> {
  List list = [
    doctorInfo(),
    Hospital_Page(),
    Hospital_Page(),
  ];
  List<Icon> allItems = [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.person),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: list[_currentIndex],
    bottomNavigationBar: CurvedNavigationBar(
      index: _currentIndex,
      onTap: (int index){
        _currentIndex = index;
      setState(() {
      });
      },
      items: allItems,
    ),
  );  }
}