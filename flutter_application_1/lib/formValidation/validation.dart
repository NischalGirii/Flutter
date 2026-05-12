import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
  const Validation({super.key});

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  @override
    final _formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController phoneController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 40,),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email"
              ),
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return "please enter email";
                }
                if(!value.contains("@")){
                  return "Enter valid Email";
                }
                return null;
              } ,
              
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                
                labelText: "Password"
              ),

              validator: (value) {
                if(value == null || value.isEmpty) {
                  return "please enter password";
                }
                if(value.length <= 8) {
                  return "Password must be atleast eight characters";
                }
                return null;
              },
        
              
            ),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: "Phone Number"
              ),

              validator: (value) {
                if(value == null || value.isEmpty) {
                  return "please enter phone number";
                }
                if(value.length < 10) {
                  return "Phone Number must be atleast ten characters";
                }
                return null;
              },

        
              
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {},
               child: Text("Submit"),
               style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent
               ),),
            )
          ],
        ),
      ),
    );
  }
}