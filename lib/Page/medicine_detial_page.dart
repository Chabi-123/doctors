import 'package:flutter/material.dart';
import 'package:gridview/constant/constant.dart';
class MedicineDetialPage extends StatelessWidget {
    List allmed;
  MedicineDetialPage({super.key,required this.allmed});

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
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allmed.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context,index){
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Card(
                         elevation: 5,
                         child: Container(
                           margin: EdgeInsets.all(2),
                           height: MediaQuery.of(context).size.height*0.1,
                           width: MediaQuery.of(context).size.width*0.9,
                           decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage('${allmed[index].imgUrl}'),fit: BoxFit.cover),
                             border: Border.all(color: primaryColor,width: 3),
                             borderRadius: BorderRadius.circular(10)
                           ),
                         ),
                       ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('${allmed[index].name}',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              SizedBox(height: 10,),
                              Text('${allmed[index].companyname}',style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                              SizedBox(height: 30,),
                              Center(
                                child: Card(
                                  elevation: 4,
                                  color: primaryColor,
                                  child: Container(
                                    width: 100,
                                    height: 40,
                                    decoration: BoxDecoration(
                                    ),
                                    child: Center(child: Text('\$${allmed[index].mrp}',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold))),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
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
