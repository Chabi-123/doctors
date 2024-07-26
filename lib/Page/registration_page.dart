import 'package:flutter/material.dart';
import 'package:gridview/Page/Sign_in_page.dart';
import 'package:gridview/data/registrationdata.dart';
import 'package:gridview/models/registrationModel.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _rePassword = TextEditingController();

  bool isObs = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration", style: TextStyle(color: Colors.white),),
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
                /// First Name
                TextFormField(
                  controller: _firstName,
                  decoration: InputDecoration(
                    label: Text("First Name"),
                    hintText: "First Name",
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
                      return "Please enter first name";
                    }
                  },
                ),

                SizedBox(height: 30,),

                /// Last Name
                TextFormField(
                  controller: _lastName,
                  decoration: InputDecoration(
                    label: Text("Last Name"),
                    hintText: "Last Name",
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
                      return "Please enter last name";
                    }
                  },
                ),

                SizedBox(height: 30,),

                /// Email
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    hintText: "Enter your email",
                    // hintStyle: TextStyle(color: Colors.purple)
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    suffix: Icon(Icons.email_outlined),
                    // suffixIcon: Icon(Icons.abc),
                    // prefix: Icon(Icons.abc),
                    // prefixIcon: Icon(Icons.abc)
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter email";
                    }
                    if(!value.contains("@")){
                      return "Enter correct email";
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

                SizedBox(height: 30,),

                /// Re-password
                TextFormField(
                  controller: _rePassword,
                  obscureText: isObs,
                  decoration: customDecoration(
                    "Re enter the pass",
                    Icon(Icons.search_rounded)
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter password";
                    }
                    if(value != _password.text.toString()){
                      return "Password does not match";
                    }
                  },
                ),

                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  color: Colors.blue,
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      user.add(
                          Registrationmodel(
                              firstName: _firstName.text.toString(),
                              lastrName: _lastName.text.toString(),
                              email: _email.text.toString(),
                              password: _password.text.toString(),
                          ),
                      );
                    }
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>SignInPage()));


                  },
                  child: Text("Register Now!"),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration customDecoration(String hint, Icon icon) {
    return InputDecoration(
                  label: Text(hint),
                  hintText: hint,
                  // hintStyle: TextStyle(color: Colors.purple)
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  suffix: IconButton(
                    onPressed: (){
                      setState(() {
                        isObs = !isObs;
                      });
                    },
                    icon: icon,
                  ),
                  // s uffixIcon: Icon(Icons.abc),
                  // prefix: Icon(Icons.abc),
                  // prefixIcon: Icon(Icons.abc)
                );
  }
}
