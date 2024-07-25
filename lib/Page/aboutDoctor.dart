import 'package:flutter/material.dart';
import 'package:gridview/constant/constant.dart';
import 'package:gridview/models/doctor_models.dart';
class DoctorsDetails extends StatelessWidget {
  DoctorClass doctorClass;
  DoctorsDetails({super.key, required this.doctorClass});

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
                    text: "Time",
                    style: myStyle(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(
                  text: "+",
                  style: myStyle(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.cyan[100],
          width: double.infinity,
          child: Column(
            children: [
              Hero(
                  tag:" ${doctorClass.imgUrl}",
                  child: Image(image: AssetImage("${doctorClass.imgUrl}"))),
              Container(
                padding: EdgeInsets.all(10),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${doctorClass.docName}",style: myStyle(28,Colors.black,FontWeight.bold),),
                              Text("${doctorClass.specialist}",style: myStyle(22,Colors.black,FontWeight.bold),),
                            ],
                          ),
                          Card(
                            child: Container(
                                height: 30,
                                width: 50,
                                child: Center(child: Text("\$ ${doctorClass.price}",style: myStyle(18,secondaryColor,FontWeight.bold),))),
                          )
                        ],
                      ),
                      SizedBox(height: 15,),
                      Text("About Doctor",style: myStyle(20,primaryColor,FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("${doctorClass.aboutDoctor}",style: myStyle(16,Colors.black),),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Patients"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.person,size: 22,color: primaryColor,),
                                      Text("${doctorClass.patient}",style: myStyle(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Experince"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.shopping_bag,size: 22,color: primaryColor,),
                                      Text("${doctorClass.experience}",style: myStyle(12,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Rating"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("${doctorClass.rating}",style: myStyle(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Center(child: Text("Available Time",style: myStyle(20,primaryColor,FontWeight.bold),)),
                      SizedBox(height: 20,),

                      Center(
                        child: SizedBox(
                          height: 95,
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: doctorClass.appointmentDays.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Card(
                                  elevation: 4,
                                  child: Container(
                                    height: 40,
                                    width: MediaQuery.of(context).size.width*0.40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("${doctorClass.appointmentDays[index]}",style: myStyle(16,primaryColor,FontWeight.bold),),
                                          Text("${doctorClass.appointmentTimes[index]}",style: myStyle(14,primaryColor,FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),

                      Center(
                        child: MaterialButton(
                          color: primaryColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          height: MediaQuery.of(context).size.height*0.05,
                          minWidth: MediaQuery.of(context).size.width*0.8,
                          onPressed: (){},
                          child: Text("Make an Appointment",style: myStyle(22,Colors.white,FontWeight.bold),),
                        ),
                      )
                    ],
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
