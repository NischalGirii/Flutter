import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/register.dart';

class Login extends StatelessWidget {
  // String username;
  // String password;
   const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          
          //  Text("username: $username"),
          // Text("password: $password"),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: 
            Text("Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)
            ),
          ),

        Text("Login using your credentials"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: usernameController,
              decoration: 
              InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder()
              ),

              
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                  border: OutlineInputBorder()
              ),
            ),
          ),


            ElevatedButton(onPressed: ()=>Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Home(
              username: usernameController.text,
              password: passwordController.text,
            ))) ,
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(400, 40),
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

          ) , 

          child: Text("Login",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 16),
          ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Create a account."),
              SizedBox(width: 5,),
              GestureDetector(
                onTap: () => Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>Registeruser())),
                child: Text("Register",
                style:TextStyle(color: Colors.blueAccent)),
              ),
            ],
          ),

          
        ],
      ),
    );
  }
}