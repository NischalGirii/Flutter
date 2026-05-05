import 'package:flutter/material.dart';

class Homeaccount extends StatelessWidget {
  const Homeaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
            child: Row(
              children: [
                Text("Hi, John!  ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),

                Icon(Icons.handshake_sharp,color: Colors.amberAccent,),
                SizedBox(width: 240,),
                Icon(Icons.notifications_none),
                Column(children: [
                  Text("Welcome back")
                ],)
              ],
            ),
          )
        ],
      ),
    );
  }
}