import 'package:flutter/material.dart';

class Cardsir extends StatelessWidget {
  const Cardsir({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: 
          Column(
            children: [
              Card(
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40,),
                      Row(
                        
                        children: [
                          Icon(Icons.phone),
                      
                      
                        Column(
                          children: [
                            Text("6666677897",
                            style: TextStyle(color: Colors.green),),
                            Text("Incoming",
                            style: TextStyle(color: Colors.amber),),
                          ],
                        )
                        ],
                      
                        
                      ),
              
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Dail",
                            style: TextStyle(color: Colors.blue)),
                            SizedBox(width: 30,),
                            Text("Call History",
                            style: TextStyle(color: Colors.blue),)
                          ],
                      )
              
                    ],
                  ), 
               ),
               SizedBox(height: 3,),
                Card(
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40,),
                      Row(
                        
                        children: [
                          Icon(Icons.phone),
                      
                      
                        Column(
                          children: [
                            Text("777777777",
                            style: TextStyle(color: Colors.green),),
                            Text("Incoming",
                            style: TextStyle(color: Colors.amber),),
                          ],
                        )
                        ],
                      
                        
                      ),
              
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Dail",
                            style: TextStyle(color: Colors.blue)),
                            SizedBox(width: 30,),
                            Text("Call History",
                            style: TextStyle(color: Colors.blue),)
                          ],
                      )
              
                    ],
                  ), 
               ),

               SizedBox(height: 3,),
                Card(
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40,),
                      Row(
                        
                        children: [
                          Icon(Icons.phone),
                      
                      
                        Column(
                          children: [
                            Text("3498789678",
                            style: TextStyle(color: Colors.green),),
                            Text("Incoming",
                            style: TextStyle(color: Colors.amber),),
                          ],
                        )
                        ],
                      
                        
                      ),
              
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Dail",
                            style: TextStyle(color: Colors.blue)),
                            SizedBox(width: 30,),
                            Text("Call History",
                            style: TextStyle(color: Colors.blue),)
                          ],
                      )
              
                    ],
                  ), 
               ),

               SizedBox(height: 3,),
                Card(
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40,),
                      Row(
                        
                        children: [
                          Icon(Icons.phone),
                      
                      
                        Column(
                          children: [
                            Text("7897989780",
                            style: TextStyle(color: Colors.green),),
                            Text("Incoming",
                            style: TextStyle(color: Colors.amber),),
                          ],
                        )
                        ],
                      
                        
                      ),
              
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Dail",
                            style: TextStyle(color: Colors.blue)),
                            SizedBox(width: 30,),
                            Text("Call History",
                            style: TextStyle(color: Colors.blue),)
                          ],
                      )
              
                    ],
                  ), 
               ),
               SizedBox(height: 3,),
                Card(
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40,),
                      Row(
                        
                        children: [
                          Icon(Icons.phone),
                      
                      
                        Column(
                          children: [
                            Text("1234567890",
                            style: TextStyle(color: Colors.green),),
                            Text("Incoming",
                            style: TextStyle(color: Colors.amber),),
                          ],
                        )
                        ],
                      
                        
                      ),
              
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Dail",
                            style: TextStyle(color: Colors.blue)),
                            SizedBox(width: 30,),
                            Text("Call History",
                            style: TextStyle(color: Colors.blue),)
                          ],
                      )
              
                    ],
                  ), 
               ),
               SizedBox(height: 3,),
                Card(
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40,),
                      Row(
                        
                        children: [
                          Icon(Icons.phone),
                      
                      
                        Column(
                          children: [
                            Text("9841642222",
                            style: TextStyle(color: Colors.green),),
                            Text("Incoming",
                            style: TextStyle(color: Colors.amber),),
                          ],
                        )
                        ],
                      
                        
                      ),
              
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Dail",
                            style: TextStyle(color: Colors.blue)),
                            SizedBox(width: 30,),
                            Text("Call History",
                            style: TextStyle(color: Colors.blue),)
                          ],
                      )
              
                    ],
                  ), 
               ),
            ],
          ),
        

        
        
        

    
    );
  }
}

// step 1 : create a card widget

// step 2: use column as the parent widget inside 
//the card's child

// step 3: use cross axis alignment 
//and set it to start for the column

// step 4: start row widget use a icon widget  in it

// step 5: use new column widget inside the row widget

// step 6: use 2 text widget inside it for 
//number and incoming text

// step 7:  outside the row widget create another row widget

// step 8: use that row widget to display dial and 
//call history text

// step 9: use mainAxisAlignment: MainAxisAlignment.end 
//for that row