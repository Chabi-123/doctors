import 'package:flutter/material.dart';
import 'package:gridview/Page/Covid_Home_Page.dart';
import 'package:gridview/Page/aboutDoctor.dart';
import 'package:gridview/Page/ambulance_page.dart';
import 'package:gridview/Page/hospitalPage.dart';
import 'package:gridview/Page/phramacy_page.dart';
import 'package:gridview/Page/patient_details.dart';
import 'package:gridview/constant/constant.dart';
import 'package:gridview/data/doctors_model.dart';
class doctorInfo extends StatefulWidget {
  doctorInfo({super.key});

  @override
  State<doctorInfo> createState() => _doctorInfoState();
}

class _doctorInfoState extends State<doctorInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              /// app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Container(
                    child: Row(
                      children: [
                        RichText(
                            text: TextSpan(
                          style: myStyle(20, primaryColor, FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'Doc',
                            ),
                            TextSpan(
                              text: 'Time',
                              style:
                                  myStyle(20, secondaryColor, FontWeight.bold),
                            ),
                            TextSpan(
                              text: '+',
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap:() {
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>PatientDetails()));
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: primaryColor),
                        image: DecorationImage(
                            image: AssetImage('assets/images/1.PNG')),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.47,
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/doc.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width * 0.49,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Stay Healthy',
                            style: myStyle(20, Colors.black, FontWeight.bold)),
                        Text('Stay Safe',
                            style: myStyle(18, Colors.black, FontWeight.bold)),
                        Text(
                            'A person skilled or specializing in healing arts. especially : one (as a physician, dentist, or veterinarian)'),
                        Row(
                          children: [
                            Icon(
                              Icons.video_call,
                              size: 35,
                              color: primaryColor,
                            ),
                            Text(
                              'Meet Online',
                              style:
                                  myStyle(17, secondaryColor, FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Services',
                      style: myStyle(25, primaryColor, FontWeight.bold)),
                  Text('See all')
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                          onTap:() {
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>ambulance_page()));
                          },
                          child: Image(image: AssetImage("assets/animations/ambulance.gif"))),
                      Text('Ambulance'),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CovidHomePage()));
                    },
                    child: Column(
                      children: [
                        Image(
                            image: AssetImage("assets/animations/virus.gif")),
                        Text('Covid-19'),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                       InkWell(
                         onTap:() {
                           Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Hospital_Page()));
                         },
                          child:
                          Image(
                            image: AssetImage("assets/animations/hospital.gif")),
                      ),
                      Text('Hospital'),
                    ],
                  ),
                  InkWell(
                    onTap:() {
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MedicinePage()));
                    },
                    child: Column(
                      children: [
                        Image(
                            image: AssetImage("assets/animations/medicine.gif")),
                        Text('Medicine'),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Rated Doctor',
                      style: myStyle(25, primaryColor, FontWeight.bold)),
                  Text('See all')
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: alldata.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 0.65,
                ),

                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder)=>DoctorsDetails(doctorClass:alldata[index],))
                      );
                    },
                    child: Card(
                      color:Colors.blue,
                      elevation: 4,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Hero(
                              tag: "${alldata[index].imgUrl}",
                              child: CircleAvatar(
                                maxRadius: 45,
                                backgroundImage:
                                    AssetImage("${alldata[index].imgUrl}"),
                              ),
                            ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("${alldata[index].docName}", style: myStyle(22, Colors.white, FontWeight.bold), textAlign: TextAlign.center,),
                            SizedBox(
                              height: 10,
                            ),
                        Text("${alldata[index].specialist}", style: myStyle(18, Colors.white,), textAlign: TextAlign.center,),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              width: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                  color: Colors.white
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, size: 20, color: Colors.yellow,),
                                  Text("${alldata[index].rating}"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
