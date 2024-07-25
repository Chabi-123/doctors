import 'package:flutter/material.dart';
import 'package:gridview/constant/constant.dart';

class PracticeButtom extends StatefulWidget {
  const PracticeButtom({super.key});

  @override
  State<PracticeButtom> createState() => _PracticeButtomState();
}

class _PracticeButtomState extends State<PracticeButtom> {
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
        child: MaterialButton(
          minWidth: MediaQuery.of(context). size.width*0.8,
          height: 60,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          color: Colors.pink,
          onPressed: (){
            showModalBottomSheet(
              isDismissible: false,
              isScrollControlled: true,
              context: context,
              builder: (context){
                return Container(
                  height: 800,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(20)
                  ),

                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);

                    },
                    child: Text("Go Back", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                );
              },
            );
          },
          child: Text("Show buttom sheet", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}

