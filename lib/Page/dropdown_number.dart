// import 'package:flutter/material.dart';
// import 'package:gridview/data/dropdown_list.dart';
// class PhoneNumber extends StatefulWidget {
//   const PhoneNumber({super.key});
//
//   @override
//   State<PhoneNumber> createState() => _PhoneNumberState();
// }
//
// class _PhoneNumberState extends State<PhoneNumber> {
//   PhoneModel phoneModel = countryCodes[0];
//   TextEditingController _phoneController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Phone number page"),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Row(
//             children: [
//               DropdownButton<PhoneModel>(
//                 value: phoneModel,
//                 icon: Icon(Icons.arrow_drop_down),
//                 iconSize: 25,
//                 onChanged: (val){
//                   setState(() {
//                     // phoneModel = val!;
//                     phoneModel = val!;
//                   });
//                 },
//                 items: countryCodes.map<DropdownMenuItem<PhoneModel>>((PhoneModel phone) {
//                   return DropdownMenuItem<PhoneModel>(
//                     value: phone,
//                     child: Text("${phone.flag} ${phone.countryName} ${phone.countryCode}"),
//                   );
//                 }).toList(),
//               ),
//               Expanded(child: TextFormField(
//                 controller: _phoneController,
//               ),),
//             ],
//           ),
//           MaterialButton(
//             onPressed: (){
//               print("${phoneModel.countryCode} ${_phoneController.text}");
//             },
//             child: Text("Submit"),)
//         ],
//       ),
//     );
//   }
// }
