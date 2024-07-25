import 'package:flutter/material.dart';
import 'package:gridview/constant/constant.dart';
import 'package:lottie/lottie.dart';
class ambulance_page extends StatelessWidget {
  const ambulance_page({super.key});

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
      body:
        Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Ambulance',style: myStyle(35,secondaryColor,FontWeight.bold),),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Column(
              children: [
                Lottie.asset('assets/animations/Animation - 1720850213608.json'),
      SizedBox(
        height: 100,
      ),
                MaterialButton(
                  minWidth:MediaQuery.of(context).size.width*0.85,
                  height:MediaQuery.of(context).size.height*0.07,
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
                  color: secondaryColor,
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
                  child: Text("Call 112",style: myStyle(20,Colors.white,FontWeight.bold),),
                )
              ],
            ),

          ],
        )
    );
  }
}
