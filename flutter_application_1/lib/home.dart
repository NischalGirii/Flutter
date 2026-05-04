import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class Home extends StatelessWidget {
  String username;
  String password;
  Home({super.key, required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          ElevatedButton(onPressed: () =>Navigator.push(context, 
          MaterialPageRoute(builder: (context) => Login())), child: Text("To login page")),
          Text("username = $username"),
          Text("password = $password")
        ],
      ),
    );
  }
}