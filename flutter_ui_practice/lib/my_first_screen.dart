import 'package:flutter/material.dart';

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
            Text("This is a text.",),
            // ElevatedButton(onPressed:() {}, child: Text("Click Me"))
            SizedBox(height: 100,),
            ElevatedButton(
              onPressed: () => print("Button was clicked"),
              
             child: Text("Click Me")),

             GestureDetector(
              onTap:() => print("Container was clicked.") ,
               child: Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.all(16),
                child: Text("Click Me"),
               
               
              

               ),
             ),

          GestureDetector(
            onTap:() =>print("Text is clicked"),
            onLongPress: () =>print("Long pressed clicked"),
            onDoubleTap: () => print("On Double Tab Pressed"),
            onLongPressCancel: () => print("Long Pressed Cancel"),

            child: Text("This is text")),
          ],),
        ],
      )
      



    );
    
  }
}