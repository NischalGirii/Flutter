import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class Registeruser extends StatelessWidget {
  const Registeruser({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Register",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 30),
            
            ),

            
          ),
          Text("Create new account to get started"),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
              labelText: "Username",
              border: OutlineInputBorder()
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField
            (
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                
                labelText: "Password",
                border: OutlineInputBorder()
              ),
            ),
          ),

          ElevatedButton(onPressed: () => Navigator.push(context, 
          MaterialPageRoute(builder: (context) => Login(
            // username: usernameController.text,
            // password: passwordController.text,
          ))),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(400, 40),
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

          ) , 

          child: Text("Register",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 16),
          ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text("Already have a account."),
              SizedBox(width: 5,),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Login(
                  // username: usernameController.text,
                  // password: passwordController.text,
                ))),
                child: Text("Login",
                style:TextStyle(color: Colors.blueAccent)),
              ),
            ],
          ),


        ],
      ),
    );
  }
}