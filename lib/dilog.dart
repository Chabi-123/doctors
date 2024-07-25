// import 'package:flutter/material.dart';
// import 'package:gridview/dilog_method.dart';
// class PracticeDialogue extends StatelessWidget {
//   const PracticeDialogue({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Show Dialogue"),
//         centerTitle: true,
//         backgroundColor: Colors.yellow,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             CustomButton(
//               text: "Button 1",
//               onTap: (){
//                 print("Button 1 is clicked");
//               },
//             ),
//             CustomButton(
//               text: "Button 2",
//               onTap: (){
//                 print("Button 2 is clicked");
//               },
//             ),
//             CustomButton(
//               text: "Button 3",
//               onTap: (){
//                 print("Button 3 is clicked");
//               },
//             ),
//             customButtonMethod(context, "Button 4", (){
//               print("Button 4 is clicked");
//             }),
//           ],
//         ),
//       ),
//     );
//   }
//
//   MaterialButton customButtonMethod(BuildContext context, String text, VoidCallback function) {
//     return MaterialButton(
//       minWidth: MediaQuery.of(context).size.width * 0.8,
//       height: 60,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       color: Colors.deepOrange,
//       onPressed: function,
//       child: Text("${text}", style: TextStyle(color: Colors.white, fontSize: 22),),
//     );
//   }
// }
