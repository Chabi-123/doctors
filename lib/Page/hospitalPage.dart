import 'package:flutter/material.dart';
import 'package:gridview/Page/hospital_detail_Info.dart';
import 'package:gridview/constant/constant.dart';
import 'package:gridview/data/hospitalData.dart';
class Hospital_Page extends StatelessWidget {
  Hospital_Page({super.key});

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
        child: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Center(child: Text('Hospital In Bhutan',style: myStyle(26,primaryColor,FontWeight.bold),)),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allhospitaldata.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (builder)=>hospital_detail_info(hospitalmodel: allhospitaldata[index],))
                      );
                    },
                    child: Card(
                      color: primaryColor,
                      shadowColor: Colors.blueAccent,
                      elevation: 8,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 250,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white ,width: 2),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                image: DecorationImage(image: AssetImage("${allhospitaldata[index].imgURl}",),fit:BoxFit.cover)
                              ),
                            ),
                            Text("${allhospitaldata[index].hpName}", style: myStyle(22, Colors.white, FontWeight.bold), textAlign: TextAlign.center,),
                            Text("${allhospitaldata[index].location}", style: myStyle(16, Colors.white,), textAlign: TextAlign.center,),
                            Container(
                              height: 40,
                              width: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, size: 20, color: Colors.yellow,),
                                  Icon(Icons.star, size: 20, color: Colors.yellow,),
                                  Icon(Icons.star, size: 20, color: Colors.yellow,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
