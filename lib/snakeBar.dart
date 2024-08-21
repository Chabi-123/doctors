import 'package:flutter/material.dart';
class Snakebar extends StatefulWidget {
  const Snakebar({super.key});

  @override
  State<Snakebar> createState() => _SnakebarState();
}

class _SnakebarState extends State<Snakebar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          final snakebar = SnackBar(
            content: Text('Login in successful'),
            behavior: SnackBarBehavior.floating,
            action: SnackBarAction(label: "cancel", onPressed: (){
            }),
          );
          ScaffoldMessenger.of(context).showSnackBar(snakebar);
        },
      ),
    );
  }
}
