import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext _) {
    return Scaffold(
      body:SingleChildScrollView(child: Form(child: Column(children: [
        SizedBox(height:100),
        Text("Login",
        style:TextStyle(fontWeight:FontWeight.bold,
        fontSize: 50,
        color:Color.fromRGBO(233,65,82,1)))
      ]),)) ,
    );
  }
}
