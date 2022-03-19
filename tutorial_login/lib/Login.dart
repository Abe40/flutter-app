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
               height:600,
               width:MediaQuery.of(context).size.width,
               decoration:BoxDecoration(color:Color.fromARGB(255, 71, 211, 157),
               borderRadius:BorderRadius.only(
                 bottomLeft:Radius.circular(30),
                 bottomRight:Radius.circular(30),
                 
               )),
               
    
        child: Padding(
          padding:EdgeInsets.all(10),
          child:Column(children: [
          SizedBox(height: 100),
          Text("Login",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(height:30),
                  Align(
                    alignment:Alignment.topLeft,
                  child:Text("Email",
                  style:TextStyle(
                    color:Colors.white,fontSize:30),
                  )),
                  TextFormField(
                    style:TextStyle(fontSize:30,color:Colors.white),
                    decoration:InputDecoration(
                      border:OutlineInputBorder(borderSide:BorderSide.none)),),
                      Container(height:2,
                      color:Colors.white),
                      SizedBox(height: 30,),
                      Align(alignment: Alignment.topLeft,
                      child:Text("password:",
                      style:TextStyle(color:Colors.white,fontSize:30))),
                      TextFormField(style:TextStyle(fontSize:30,color:Colors.white),
                      decoration:InputDecoration(
                        border:OutlineInputBorder(borderSide:BorderSide.none)
                      )),
                      Container(height:2,
                      color:Colors.white),
                      SizedBox(height:30),
                      Center(child:Text("Don't have Account?",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:20),))

            
        ]),
      )),
    )));
  }
}
