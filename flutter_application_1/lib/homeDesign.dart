import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginDesign.dart';

class Homedesign extends StatelessWidget {
  String username;
  String password;
   Homedesign({super.key, required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: ()=>Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>Logindesign())),
            child: Text("Goback to Login"),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(400, 40),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
            ), ),
          ),

          Text("username = $username"),
          Text("password=$password")
        ],
      ),
    );
  }
}