import 'package:flutter/material.dart';

void main() {
  runApp(const First());
}

class First extends StatelessWidget {
  const First({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyFirstScreen(),
    );
  }
}
//stl

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // Widget: Text, Column
      // body: Text("This is the text.")
      body: Column(
        children: [
          Text("This is the text.", 
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
              color:  Colors.teal

          ),
          ),
          Text("This is text two."),
          Image.asset('assets/images/Picture1.png',
          height: 200,
          width: 150,
          

          ),
          SizedBox(height: 50),


          Image.network('https://picsum.photos/122',
          width: 200,
          height: 200,
          
          
          ),

          
          Icon(Icons.laptop, size:32, color: Colors.black45,),
          Row(children: [
            Icon(Icons.label, size:32, color: Colors.red,),
            SizedBox(width: 100,),
            Text("This is a text.",)
          ],),
        ],
      )
      
    );
    
  }
}