import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
  const Validation({super.key});

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  @override
    final _formKey = GlobalKey<FormState>();
    TextEditingController usernameController = TextEditingController();
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
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username"
              ),
        
              
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                
                labelText: "Password"
              ),
        
              
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: "Phone Number"
              ),
        
              
            )
          ],
        ),
      ),
    );
  }
}