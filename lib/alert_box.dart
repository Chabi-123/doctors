import 'package:flutter/material.dart';
import 'package:gridview/constant/constant.dart';
class PracticeDilalogue extends StatelessWidget {
  const PracticeDilalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyle(26,primaryColor,FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                    text: "Time", style: myStyle(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(
                  text: "+",style: myStyle(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              minWidth:MediaQuery.of(context).size.width*0.8,
              color: Colors.deepOrangeAccent,
              onPressed: (){
                showDialog(context: context, builder: (context){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AlertDialog(
                        title: Text("Do you want to call?"),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("Yes")),
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("No"))
                        ],
                      ),
                    ],
                  );
                });
              },
              child: Text("button",style: myStyle(20,Colors.white,FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}