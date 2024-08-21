import 'package:flutter/material.dart';
class expended extends StatelessWidget {
  const expended({super.key});
@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
  title: 'Expanded Task',
    home: Scaffold(
  appBar: AppBar(
    title: Text('Expanded Task'),
  ),
      body:Column(
  children: [

    Expanded(
      flex: 1,
      child: Row(
        children: [
        Expanded(flex: 2, child: Container(color: Colors.red)),
          Expanded(flex: 2, child: Column(
          children: [
            Expanded(flex: 1, child: Container(color: Colors.yellow)),
            Expanded(flex: 1, child: Container(color: Colors.orange)),
          ],
        )),
        ],
      ),
    ),
    Expanded(
      flex: 1,
      child: Row(
        children: [
        Expanded(flex: 2, child:
        Column(
          children: [
          Expanded(flex: 1, child: Container(color: Colors.blue)),
        ],                  )),
        Expanded(flex: 2, child: Container(color: Colors.purple)),
        ],
      ),
    ),
    Expanded(
      flex: 1,
      child: Row(
        children: [
        Expanded(
            flex: 4,
            child: Column(
          children: [
          Expanded(flex: 1, child: Container(color: Colors.green)),
            Expanded(flex: 1, child: Container(color: Colors.orange)),
        ],
        )),
        Expanded(flex: 3, child:
        Container(color: Colors.red)),
        ],
      ),
    ),
      Expanded(
        flex:1,
        child: Row(
          children: [
            Expanded(flex: 2, child:
            Column(
              children: [
                Expanded(flex: 2, child: Container(color: Colors.yellow)),
              ],                  )
            ),
            Expanded(flex: 2, child: Container(color: Colors.red)),
            Expanded(flex: 2, child: Container(color: Colors.green)),
          ],

        ),
      ),
    Expanded(
      flex:2,
      child: Row(
        children: [
          Expanded(flex: 1,
              child:
          Column(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.blue)),
            ],
          ),

          ),
          Expanded(flex: 2, child: Container(color: Colors.red)),
          Expanded(flex: 2, child: Container(color: Colors.green)),
        ],

      ),
    ),

  ],
      ),
),
  );
}}