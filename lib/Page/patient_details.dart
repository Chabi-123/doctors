  import 'package:flutter/material.dart';
import 'package:gridview/constant/constant.dart';
class PatientDetails extends StatelessWidget {
  const PatientDetails({super.key});

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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        // padding: EdgeInsets.all(10),
        child: Column(
            children: [
        Image(image: AssetImage("assets/images/pacient.png")),
            Container(
            width: double.infinity,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
            color: Colors.white,
            ),
            child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ],
            ),
            SizedBox(height: 10,),
            Center(child: Text("Patient Details",style: myStyle(35,primaryColor,FontWeight.bold),)),
            Divider(
              thickness: 1.5,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name:",style: myStyle(20,primaryColor,FontWeight.bold),),
                    Text("DOB:",style: myStyle(20,primaryColor,FontWeight.bold),),
                    Text("Sex:",style: myStyle(20,primaryColor,FontWeight.bold),),
                    Text("Address:",style: myStyle(20,primaryColor,FontWeight.bold),),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ram Dorji",style: myStyle(20,Colors.black, FontWeight.bold),),
                    Text("00/00/0000",style: myStyle(20,Colors.black,FontWeight.bold),),
                    Text("Male",style: myStyle(20,Colors.black,FontWeight.bold),),
                    Text("Wangduephodrang",style: myStyle(20,Colors.black,FontWeight.bold),),
                  ],
                ),
              ],
            ),
              SizedBox(height: 4,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            ],
            ),
              SizedBox(height: 15,),
              Text("Medical Report:",style: myStyle(20,primaryColor,FontWeight.bold),),
              Divider(thickness: 1.5,),
            Text("Mr. John Doe, a 55-year-old male, presents to the emergency department with sudden-onset severe substernal chest pain rated 9/10 in intensity. The pain radiates to his left arm and jaw and is associated with nausea and diaphoresis. He denies similar episodes in the past but has a history of hypertension controlled with metoprolol. :",style: myStyle(20,Colors.black,FontWeight.bold),),
              SizedBox(height: 20,),
        Center(
            child: MaterialButton(
            color: primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            height: MediaQuery.of(context).size.height*0.07,
            minWidth: MediaQuery.of(context).size.width*0.8,
            onPressed: (){},
            child: Text('Contact: +975 17345567',style: myStyle(22,Colors.white,FontWeight.bold),),
            ),
            )
            ],
            ),
            ),
            ),
          ],
            ),
      ),
    );
  }
}
