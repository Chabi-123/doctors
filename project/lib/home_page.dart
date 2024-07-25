import 'package:flutter/material.dart';
import 'package:project/constant_file/contsant.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: MediaQuery.of(context).size.height*0.08,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.menu,color: primaryColor,size: 35,),
                      SizedBox(width: 20,),
                      Text('Hi,   User Name',style: myStyle(20,primaryColor),),
                    ],
                  ),
                  Text("Let's have productive workout today! ",style: myStyle(15,Colors.grey.shade600),),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              elevation: 4,
              child: Container(
                height: MediaQuery.of(context).size.height*0.392,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.25,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage("assets/images/strong-man.jpg"),fit: BoxFit.cover)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Current Workout Plan',style: myStyle(17,primaryColor),),
                          Row(
                            children: [
                              Text('See all Details  ',style: myStyle(13,primaryColor),),
                              Icon(Icons.read_more,color: primaryColor,),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Bodywaight Program',style: myStyle(15,primaryColor),),
                          Text('0%',style: myStyle(15,primaryColor),),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 12,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300]
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              elevation: 4,
              child: Container(
                height: MediaQuery.of(context).size.height*0.48,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.25,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage("assets/images/mycalories_img.jpg"),fit: BoxFit.cover)
                      ),
                        ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('My Daily Calories',style: myStyle(18,primaryColor),),
                          Row(
                            children: [
                              Text('See all Details  ',style: myStyle(13,primaryColor),),
                              Icon(Icons.read_more,color: primaryColor,),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Calories',style: myStyle(15,primaryColor),),
                          Text('0/1300 kcal',style: myStyle(15,primaryColor),),
                        ],
                       ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                     height: 12,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300]
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Proteins",style: myStyle(15,Colors.black,),),
                            Text('0/150',style: myStyle(13),),
                            Container(
                              height: 12,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[300]
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Fats",style: myStyle(15,Colors.black,),),
                            Text('0/40',style: myStyle(13),),
                            Container(
                              height: 12,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[300]
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Carbs",style: myStyle(15,Colors.black,),),
                            Text('0/77',style: myStyle(13),),
                            Container(
                              height: 12,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[300]
                              ),
                            ),
                          ],
                        )
                      ],
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
