import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(child: Text("Login",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: 
              InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder()
              ),

              
            ),
          ),

          TextField(
            decoration: InputDecoration(
              
            ),
          )
        ],
      ),
    );
  }
}