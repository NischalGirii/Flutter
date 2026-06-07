import 'package:flutter/material.dart';
import 'package:flutter_application_1/homeDesign.dart';

class Logindesign extends StatelessWidget {
  const Logindesign({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return  Scaffold(
      body: Column(

        children: [
         
          SizedBox(height: 70,),


          

          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: Icon(
                size: 60,
                Icons.person),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            
          ),
          Text("Login",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Please enter your credentials to login"),
          ),

          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(

              controller: usernameController,
              decoration: 
            
              InputDecoration(
                prefixIcon: Icon(Icons.person_2_outlined),
               hintText: "Enter your username",
                labelText: "Username",
                border: OutlineInputBorder()
              ),
            ),
          ),

        Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
               controller: passwordController,
              decoration: 
              InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
               hintText: "Enter your password",
                labelText: "Password",
                border: OutlineInputBorder()
              ),
            ),
          ),

          Container(
            alignment: Alignment.topRight ,
            width: 400,
            height: 40,
            // color: Colors.amber,
            child: 
            
            Text("Forgot Password?",
            style: TextStyle(
              color: Colors.blue
            ),),
          
          ),

         
       ElevatedButton(onPressed: ()=>Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Homedesign(
              username: usernameController.text,
              password: passwordController.text,
            ))) , 

          child: Text("Login",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(400, 40),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

          ) ,
          ),
         
          

        ],
      ),
    );
  }
}