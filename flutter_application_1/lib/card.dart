import 'package:flutter/material.dart';

class CardDesgin extends StatelessWidget {
  const CardDesgin({super.key});

  @override

  
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30,),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                CircleAvatar(radius: 20,
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.black,),),
                const SizedBox(width: 20,),
                Text("Mr. Ram"),
               
              ],
            ),
            // color: Colors.amber,
            

          )
        ],
      ),
    );
  }
}