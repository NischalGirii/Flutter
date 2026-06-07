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
            

          ),

          const SizedBox(height: 30,),
          
          Card(
                child: Row(
                  children: [
                    
                    Column(
                      children: [Icon(Icons.phone),],),
                    
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("666677897",
                        style: TextStyle( 
                          color: Colors.green,
                        ),),
                        SizedBox(height: 1,),
                        Text("Outgoing",
                        style: TextStyle(
                          color: Colors.amber
                        ),),
                        SizedBox(height: 20,),
                       
                      ],
                      

                    ),
                   
                    SizedBox(width: 160,),
                    
                    Row(
                      
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            
                            Text("Dail",
                            style: TextStyle(
                              color: Colors.blue,
                            ),),
                             SizedBox(width: 10,),
                        Text("Call History",
                        style: TextStyle(
                          color: Colors.blue,
                        ),),
                          ],
                        ),
                    
                  ],
                ),
                

                
               )
        ],
      ),
    );
  }
}


