import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {

  CustomButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text('Do you want to quit?'),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);},
                child: Text('YES')),
            TextButton(onPressed: (){}, child: Text('NO)'))
          ],
        );
      });
    });
  }
}