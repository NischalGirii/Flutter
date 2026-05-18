import 'package:flutter/material.dart';

class ProfileNew extends StatefulWidget {
  const ProfileNew({super.key});

  @override
  State<ProfileNew> createState() => _ProfileNewState();
}

class _ProfileNewState extends State<ProfileNew> {
  String selectedDate = "";
  TextEditingController dateController = TextEditingController();
  Future<void> pickDate() async{
    DateTime? pickedDate = await showDatePicker(
      context: context, 
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
       lastDate: DateTime(3000));

       if(pickedDate != null){
        setState(() {
          
          selectedDate = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
          dateController.text = selectedDate;

        });
       }
    }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Text("Profile",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
              
            ),),
            Spacer(),
            Icon(Icons.settings,
            color: Colors.white,),

          

          ],
        ),
        
        backgroundColor: Colors.deepPurpleAccent,

      ),
      body: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            children: [
              
              Stack(
                children: [
                  Container(
                    width: 450,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 150,
                    child: CircleAvatar(
                      maxRadius: 48,
                      backgroundColor: Colors.grey[300],
                      child: Icon(Icons.person,
                      size: 70,),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 225,
                    child: 
                  CircleAvatar(
                      maxRadius: 16,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.ac_unit_outlined,
                      color: Colors.deepPurpleAccent,),
                  )),
          
                  Positioned(
                    top: 120,
                    left:140,
                    child: Text("Rahul Sharma",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),)),
                  
                  Positioned(
                    top: 145,
                    left: 120,
                    child:Text("rahul.sharma@email.com",
                    style: TextStyle(
                      color: Colors.white
                    ),) )
                ],
              ),
          
              Container(
                // height: 400,
                // width: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.person_pin,
                                    color: Colors.deepPurpleAccent,),
                                    Text("Personal Information",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    ],
                                  ),
          
                                    Text("Edit",
                                    style: TextStyle(
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold
                                    ),),
                                ],
                                
                              ),
                            ),
                          
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Align(
                              alignment: AlignmentGeometry.centerLeft,
                              child: Text("Full Name",
                              style: TextStyle(
                                fontSize: 12
                              ),)
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Align(
                              alignment: AlignmentGeometry.centerLeft,
                              child: Text("Email",
                              style: TextStyle(
                                fontSize: 12
                              ),)
                              ),
                          ),
                           Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
                              ),
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Align(
                              alignment: AlignmentGeometry.centerLeft,
                              child: Text("Phone Number",
                              style: TextStyle(
                                fontSize: 12
                              ),)
                              ),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
                              ),
                            ),
                          ),
          
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Align(
                              alignment: AlignmentGeometry.centerLeft,
                              child: Text("Date of Birth",
                              style: TextStyle(
                                fontSize: 12
                              ),)
                              ),
                          ),
          
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextFormField(
                              controller: dateController,
                              onTap: pickDate,
                              
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                                suffixIcon: Icon(Icons.calendar_month)
                              ),
                            ),
                          ),
                          ],
                          
                        ),
                      ),
                    ),
                   Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                children: [
                                  Icon(
                                    Icons.edit_document,
                                    color: Colors.deepPurpleAccent,
                                  ),

                                  SizedBox(width: 8),

                                  Text(
                                    "About Me",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),

                              TextFormField(
                                maxLines: 3,
                                initialValue:
                                    "Passionate about mobile app development and exploring new technologies.",
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                        fixedSize: Size(380, 30)
                      ),
                      onPressed: () {}, 
                    child: Text("Logout",style: TextStyle(color: Colors.white),
                    ) )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
      
      
  } 
}