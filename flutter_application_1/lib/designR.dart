import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 75,),
          Text("Hello! Register to get started"
          ,style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),


        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: "First Name",
              border: const OutlineInputBorder(),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Last Name",
              border: const OutlineInputBorder(),
            ) ,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
            ),
          ),
        ),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
            
            )
          ),
          onPressed: () => print("Register Clicked.")
        , child: Text("Register") ),

        const SizedBox(height: 10,),

         Row(
              children: <Widget>[
                Expanded(child: Divider(
                  thickness: 1,
                  endIndent: 10,
                  color: Colors.grey,
                ),),
                Text("Or Login with"),
                Expanded(child: Divider(
                  thickness: 1,
                  indent: 10,
                  color: Colors.grey,
                ))
              ],
            ),


        ],

      ),
    );
  }
}