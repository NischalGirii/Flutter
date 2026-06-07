import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
         Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, // centers vertically
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 20),
                      Text(
                        "Good morning,",
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.person,size: 50,),
                ],
                ),
              ),
            ),

            Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // First Card
                            Stack(
                              children: [
                                Container(
                                  width: 100,
                                  height: 125,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 213, 198, 254),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                Positioned(
                                  top: 15,
                                  right: 32,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color.fromARGB(255, 214, 149, 252),
                                    child: Icon(Icons.edit_document),
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  right: 43,
                                  child: Text(
                                    "12",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 94,
                                  left: 29,
                                  child: Text("Tasks"),
                                ),
                              ],
                            ),

                            // Second Card
                            Stack(
                              children: [
                                Container(
                                  width: 100,
                                  height: 125,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 168, 189, 253),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                Positioned(
                                  top: 15,
                                  right: 32,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color.fromARGB(255, 130, 153, 255),
                                    child: Icon(Icons.edit_document),
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  right: 45,
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 94,
                                  left: 12,
                                  child: Text("In Progress"),
                                ),
                              ],
                            ),

                            Stack(
                              children: [
                                Container(
                                  width: 100,
                                  height: 125,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 161, 225, 176),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                Positioned(
                                  top: 15,
                                  right: 32,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color.fromARGB(255, 152, 251, 158),
                                    child: Icon(Icons.edit_document),
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  right: 47,
                                  child: Text(
                                    "7",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 94,
                                  left: 16,
                                  child: Text("Completed"),
                                ),
                              ],
                            ),

                          // Container(
                          //   height: 125,
                          //   width: 100,
                          //   child: Card(
                          //     child: Container(
                          //       height: 5,
                          //       width: 6,
                          //       decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(12),
                          //         color: const Color.fromARGB(255, 223, 255, 224)
                          //       ),
                          //       child: Container(
                          //         height: 10,
                          //         width:12,
                          //         decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(12),
                          //           color: Colors.green
                          //         ),
                          //         child: Icon(
                          //          Icons.edit_document,
                          //         ),
                          //       ),
                          //     ),
                               
                                
                          //     ),
                          // ),
                            
                            
                          

                          ],
                        ),
                      ],
                    ),
                  ),
                ),

            
           


         
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
              
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      Text("My Tasks",
                      style: TextStyle(fontWeight: FontWeight.bold),),
                      
                       
                      Text("View all",
                      style: TextStyle(color: Colors.deepPurpleAccent),),

                    ],
                 
                  ),
                  SizedBox(height: 30,),
                 Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 70,
                            width: 4000,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white54
                              ),
                       
                          ),

                          Positioned(
                            top: 4,
                            left: 2,
                            child: CircleAvatar(
                              radius: 25,
                              child: Icon(Icons.edit_document)),
                          ),

                          Positioned(
                            top: 11,
                            left: 55,
                            child: Text("Design mobile app",
                            style: TextStyle(fontWeight: FontWeight.bold ),),
                            ),

                          Positioned(
                            top: 29,
                            left: 55,
                            child: Text("UI/UX Design")),


                          Positioned(
                            top: 10,
                            right: 4,
                            child: Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color.fromARGB(255, 218, 206, 252)
                              ),
                              child: Center(child: Text("In Progress",
                              style: TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.deepPurple)),)),
                            ),
                          

                        ],
                      ),
                    ],
                  ),


                  SizedBox(height: 10,),
                 Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 70,
                            width: 4000,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white54
                              ),
                              
                          
                            

                            
                          ),

                          Positioned(
                            top: 4,
                            left: 2,
                            child: CircleAvatar(
                              backgroundColor: const Color.fromARGB(255, 208, 234, 255),
                              radius: 25,
                              child: Icon(Icons.html,color: const Color.fromARGB(255, 0, 140, 255),)),
                          ),

                          Positioned(
                            top: 11,
                            left: 55,
                            child: Text("Design mobile app",
                            style: TextStyle(fontWeight: FontWeight.bold ),),
                            ),

                          Positioned(
                            top: 29,
                            left: 55,
                            child: Text("UI/UX Design")),


                          Positioned(
                            top: 10,
                            right: 4,
                            child: Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color.fromARGB(255, 208, 234, 255)
                              ),
                              child: Center(child: Text("In Progress",
                              style: TextStyle(fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 140, 255))),)),
                            ),
                          

                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),
                 Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 70,
                            width: 4000,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white54
                              ),
                              
                          
                            

                            
                          ),

                          Positioned(
                            top: 4,
                            left: 2,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: const Color.fromARGB(255, 222, 255, 219),
                              child: Icon(Icons.check,color: const Color.fromARGB(255, 0, 201, 7))),
                          ),

                          Positioned(
                            top: 11,
                            left: 55,
                            child: Text("Design mobile app",
                            style: TextStyle(fontWeight: FontWeight.bold ),),
                            ),

                          Positioned(
                            top: 29,
                            left: 55,
                            child: Text("UI/UX Design")),


                          Positioned(
                            top: 10,
                            right: 4,
                            child: Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color.fromARGB(255, 222, 255, 219)
                              ),
                              child: Center(child: Text("In Progress",
                              style: TextStyle(fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 201, 7))),)),
                            ),
                          

                        ],
                      ),
                    ],
                  ),


                   SizedBox(height: 10,),
                 Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 70,
                            width: 4000,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white54
                              ),
                              
                          
                            

                            
                          ),

                          Positioned(
                            top: 4,
                            left: 2,
                            child: CircleAvatar(
                              backgroundColor: const Color.fromARGB(255, 255, 226, 221) ,
                              radius: 25,
                              child: Icon(Icons.timer_outlined,color: const Color.fromARGB(255, 219, 33, 0),)),
                          ),

                          Positioned(
                            top: 11,
                            left: 55,
                            child: Text("Design mobile app",
                            style: TextStyle(fontWeight: FontWeight.bold ),),
                            ),

                          Positioned(
                            top: 29,
                            left: 55,
                            child: Text("UI/UX Design")),


                          Positioned(
                            top: 10,
                            right: 4,
                            child: Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color.fromARGB(255, 255, 226, 221)
                              ),
                              child: Center(child: Text("In Progress",
                              style: TextStyle(fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 219, 33, 0))),)),
                            ),
                          

                        ],
                      ),
                    ],
                  ),




                ],
              ),

            
              
             
            ),

          ),
           
        ],
      ),
    );
  }
}