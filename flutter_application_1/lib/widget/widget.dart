import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         discoverWidget(Icons.person,"Who viewed my profile"),
         
        ],
      ),
      
    );
    
  }
   Widget discoverWidget(IconData icon, String title){
            return Column(
              children: [
                  Icon(icon, size: 30),
                  const SizedBox(height: 5,),
                  Text(title),
              ],
            );
          }
}