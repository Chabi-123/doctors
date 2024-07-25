import 'package:flutter/material.dart';
class gridview_practise extends StatelessWidget {
  const gridview_practise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           GridView.builder(
             physics: NeverScrollableScrollPhysics(),
             itemCount: 10,
             shrinkWrap: true,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
             crossAxisSpacing: 10,
             mainAxisSpacing: 10,
             childAspectRatio: 0.9,
           ),
             itemBuilder: (context,index){
             return Container(
               color: Colors.orange,
             );
             },
           ),

          ],
        ),
      ),
    );
  }
}
