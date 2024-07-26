import 'package:flutter/material.dart';
import 'package:project/constant_file/contsant.dart';
import 'package:project/data/menu_data.dart';
class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 12),
              height: MediaQuery.of(context).size.height*0.08,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.menu,size: 34,),
                      SizedBox(width: 25,),
                      Text('Hi,   User Name',style: myStyle(20,),),
                    ],
                  ),
                  Text("Let's have productive workout today! ",style: myStyle(15,Colors.grey.shade600,),),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              elevation: 4,
              child: Container(
                height: MediaQuery.of(context).size.height*0.35,
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
                          Text('Current Workout Plan',style: myStyle(17,),),
                          Row(
                            children: [
                              Text('See all Details  ',style: myStyle(13,),),
                              Icon(Icons.read_more,),
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
                          Text('Bodywaight Program',style: myStyle(15,),),
                          Text('0%',style: myStyle(15,),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 0.9,
          ),
            shrinkWrap: true,
            itemCount: alldata.length,
            itemBuilder: (context,index){
            return Card(
              margin: EdgeInsets.all(10),
              color: Colors.white,
              elevation: 4,
              shadowColor: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 85,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('${alldata[index].imgUrl}'))
                    ),
                  ),
                  Text('${alldata[index].name }',style: myStyle(18,),)
                ],
              ),
            );
            },
          ),

          ],
        ),
      ),
    );
  }
}
