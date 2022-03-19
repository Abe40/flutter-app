import 'dart:convert';

import 'package:flutter/material.dart';
import 'user.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey();
  User user = User("", "");
  String url = 'http://localhost:8000/login';
  Future save() async {
    var res = await http.post(Uri.parse(url),
        headers: {'Content-Type': 'Application/json'},
        body: json.encode({'email': user.email, 'password': user.password}));
    print(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Form(
      key: _formKey,
      child: Container(
          height: 600,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 71, 211, 157),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              SizedBox(height: 100),
              Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
              SizedBox(height: 30),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
              TextFormField(
                controller: TextEditingController(text: user.email),
                onChanged: (val) {
                  user.email = val;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "email is empty";
                  }
                  return "";
                },
                style: TextStyle(fontSize: 30, color: Colors.white),
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
              Container(height: 2, color: Colors.white),
              SizedBox(
                height: 30,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("password:",
                      style: TextStyle(color: Colors.white, fontSize: 30))),
              TextFormField(
                  controller: TextEditingController(text: user.password),
                  onChanged: (val) {
                    user.password = val;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "empty password";
                    }
                    return '';
                  },
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none))),
              Container(height: 2, color: Colors.white),
              SizedBox(height: 30),
              Center(
                  child: Text(
                "Don't have Account?",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
              SizedBox(height: 30),
              Container(
                  height: 50,
                  width: 50,
                  child: TextButton(
                    onPressed: () {
                      save();
                    },
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                        color: Colors.red,
                      ),
                    ))),
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                  ))
            ]),
          )),
    )));
  }
}
