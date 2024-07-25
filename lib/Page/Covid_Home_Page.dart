import 'package:flutter/material.dart';
import 'package:gridview/constant/constant.dart';
import 'package:gridview/data/covid_data.dart';
class CovidHomePage extends StatelessWidget {
  const CovidHomePage({super.key});

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
        child: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(child: Text('COVID IN BHUTAN',style: myStyle(26,primaryColor,FontWeight.bold),)),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allcovidData.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: secondaryColor,
                    shadowColor: Colors.blueAccent,
                    elevation: 8,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white ,width: 2),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                image: DecorationImage(image: AssetImage("${allcovidData[index].imgUrl}",),fit:BoxFit.cover)
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 150,
                                width: 350,
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Population: ${allcovidData[index].total}", style: myStyle(25, Colors.white, FontWeight.bold), textAlign: TextAlign.center,),
                                    SizedBox(height: 15,),
                                    Text("Inficted: ${allcovidData[index].infected}", style: myStyle(28, Colors.white, FontWeight.bold), textAlign: TextAlign.center,),
                                    SizedBox(height: 15,),
                                    Text("Death: ${allcovidData[index].number_died}", style: myStyle(28, Colors.redAccent, FontWeight.bold), textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20,),
              Text('Total Coronavirus case in Bhutan', style: myStyle(20, Colors.black, FontWeight.bold),),
              SizedBox(height: 10,),
              Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: secondaryColor,width: 4),
                    image: DecorationImage(image: AssetImage('assets/images/Screenshot (8).png'),fit: BoxFit.cover,)
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1.5,),
              SizedBox(height: 20,),
              Text('Daily New Case in Bhutan', style: myStyle(20, Colors.black, FontWeight.bold),),
              SizedBox(height: 10,),
              Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: secondaryColor,width: 4),
                      image: DecorationImage(image: AssetImage('assets/images/Screenshot (9).png'),fit: BoxFit.cover,)
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1.5,),
              SizedBox(height: 20,),
              Text('Total Coronavirus Death in Bhutan', style: myStyle(20, Colors.black, FontWeight.bold),),
              SizedBox(height: 10,),
              Card(

                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: secondaryColor,width: 4),
                      image: DecorationImage(image: AssetImage('assets/images/Screenshot (11).png'),fit: BoxFit.cover,)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

