import 'package:flutter/material.dart';
import 'package:gridview/Page/doctor_homepage.dart';
import 'package:gridview/Page/registration_page.dart';
import 'package:gridview/data/registrationdata.dart';
import 'package:gridview/models/sign_inModel.dart';

import '../models/registrationModel.dart';
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  
  bool isObs = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 80 ,
                  backgroundImage: AssetImage('assets/images/doctor33.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                /// First Name
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    hintText: "Email",
                    // hintStyle: TextStyle(color: Colors.purple)
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    // suffix: Icon(Icons.search),
                    // suffixIcon: Icon(Icons.abc),
                    // prefix: Icon(Icons.abc),
                    // prefixIcon: Icon(Icons.abc)
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter email";
                    }
                  },
                ),

                SizedBox(height: 30,),
                
                /// Password
                TextFormField(
                  controller: _password,
                  obscureText: isObs,
                  decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter your password",
                    // hintStyle: TextStyle(color: Colors.purple)
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    suffix: IconButton(
                      onPressed: (){
                        isObs = !isObs;
                        setState(() {

                        });
                      },
                      icon: Icon(Icons.visibility),
                    ),
                    // suffixIcon: Icon(Icons.abc),
                    // prefix: Icon(Icons.abc),
                    // prefixIcon: Icon(Icons.abc)
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter password";
                    }
                    if(value.length < 8){
                      return "Password must be at least 8 digits/char";
                    }
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  color: Colors.blue,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  onPressed: (){
                    if(_formKey.currentState!.validate() && _email.text.toString() == user[0].email && _password.text.toString() == user[0].password){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (builder)=>doctorInfo()),(routes)=>false);
                    }

                  },
                  child: Text("Sign In",style: TextStyle(color: Colors.white),),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Forgot Password',style: TextStyle(fontSize: 20),),
                Text("${user[0].email}"),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.5,
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Registration()));
                  },
                  child: Text("Register Now!",style: TextStyle(color: Colors.black,fontSize: 22),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.mail,color: Colors.blue,),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.call,color: Colors.blue,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
