import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Form(
             child:Container(
               height:500,
               width:MediaQuery.of(context).size.width,
               decoration:BoxDecoration(color:Color.fromARGB(255, 71, 211, 157),
               borderRadius:BorderRadius.only(
                 bottomLeft:Radius.circular(30),
                 bottomRight:Radius.circular(30),
                 
               )),
               
    
        child: Column(children: [
          SizedBox(height: 100),
          Text("Login",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Color.fromARGB(255, 0, 0, 0)))
        ]),
      )),
    ));
  }
}
