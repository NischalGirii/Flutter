import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String username;
  final String password;
  Home({super.key, required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          ElevatedButton(onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(title: Text("Are you sure about logout?")),
            );
          }, child: Text("To login page")),
          Text("username = $username"),
          Text("password = $password")
        ],
      ),
    );
  }
}