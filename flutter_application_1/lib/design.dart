import 'dart:async';

import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // const Center(
          
            
          // )


          const SizedBox(height: 170),
          const Text("Welcome back Glad to see you, Again!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

          const SizedBox(height: 20),

          TextField(
            decoration: InputDecoration(
              labelText: "Enter your email",
              border: const OutlineInputBorder() 
            )
          ),
          
          const SizedBox(height: 20),

          TextField(
            decoration: InputDecoration(
              labelText: "Enter your password",
              border: const OutlineInputBorder() 
            )
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
            ),
            onPressed: () =>print("Login Button Clicked"), 
            child: Text("Login"),
          
            
            ),
           
            
            const SizedBox(height: 20),

            const Text("Or Login with"),

            const SizedBox(height: 20),


            ElevatedButton(onPressed: () =>print("Facebook Clicked"), 
            child: Icon(Icons.facebook, size: 40,),),
            
            const SizedBox(width: 40,),
            ElevatedButton(onPressed: () =>print("Google clicked"), child: Icon(Icons.g_mobiledata, size: 40,),),
            

            const SizedBox(height: 20,),
            const Text("Don't have an account? Register Now")

        ],
      ),

    );
  }
}