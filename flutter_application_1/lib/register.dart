import 'package:flutter/material.dart';

class Registeruser extends StatelessWidget {
  const Registeruser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Register",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 30),
            
            ),

            
          ),
          Text("Create new account to get started"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(
              labelText: "Username",
              border: OutlineInputBorder()
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder()
              ),
            ),
          ),

          ElevatedButton(onPressed: () => print("Register Button Clicked"), 
          child: Text("Register",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(400, 40),
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

          ) ,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have a account."),
              SizedBox(width: 5,),
              Text("Sigin",
              style:TextStyle(color: Colors.blueAccent)),
            ],
          )
        ],
      ),
    );
  }
}