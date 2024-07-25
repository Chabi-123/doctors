import 'package:flutter/material.dart';
import 'package:gridview/constant/constant.dart';
import 'package:gridview/models/hospitalModel.dart';
class hospital_detail_info extends StatelessWidget {
  Hospitalmodel hospitalmodel;
  hospital_detail_info({super.key,required this.hospitalmodel});

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

      /// body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
              ),
              child: Column(
                children: [
                  Card(
                    elevation: 10,
                    color: Colors.white,
                    child: Container(
                      margin: EdgeInsets.all(5),
                     width: MediaQuery.of(context).size.width*0.95 ,
                      height: MediaQuery.of(context).size.height*0.25,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                         image: DecorationImage(image: AssetImage(hospitalmodel.imgURl),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Text('${hospitalmodel.hpName}',style:myStyle(32,Colors.black,FontWeight.bold)),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/animations/icons-location.gif'),color: Colors.redAccent,),
                      SizedBox(width: 10,),
                      Text('${hospitalmodel.location}',style:myStyle(22,Colors.black,FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text('Total Stafs:  ${hospitalmodel.numStaff}',style:myStyle(20,Colors.black)),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.grey,)
                    ],
                  ),
                  SizedBox(height: 25,),
                  Text('${hospitalmodel.aboutHospital}',style:myStyle(18,Colors.black)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
