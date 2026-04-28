import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Stack(
              children: [
                
                //bottom layer - background box
                Container(
                  width: 200, height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
            
                //middle layer - white card on the top of the container

                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    width: 160, height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      
                    ),
                    child: Center(child: Text("Hello")),
                    // child: Positioned(
                    //   left: 100,
                    //   child: Icon(Icons.notifications)),
                    
                  ),
                ),
                // Positioned(
                //   left:175,
                //   // child: Text("Hello")),
                //   child: Icon(Icons.notifications)),

              Positioned(
                top: 8,
                right: 8,
                child: CircleAvatar(
                

                radius: 10,
                backgroundColor: Colors.amberAccent,
                child: const Text('10'),
              ),

              ),





                  
              ],

            )
          ],
        ),
      ),
    );
  }
}