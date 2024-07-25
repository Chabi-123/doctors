import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  String text;
  VoidCallback onTap;

  CustomButton({
    super.key,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width * 0.8,
      height: 60,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.deepOrange,
      onPressed: onTap,
      child: Text("${text}", style: TextStyle(color: Colors.white, fontSize: 22),),
    );
  }
}
