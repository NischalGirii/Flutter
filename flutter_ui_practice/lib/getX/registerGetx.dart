import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controller/auth_controller.dart';
import 'package:get/get.dart';


class Registergetx extends StatelessWidget {
  Registergetx({super.key});

   final AuthController controller = Get.put(AuthController());
   
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder()
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: countryController,
              decoration: InputDecoration(
                labelText: "Country",
                border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: "Phone",
                border: OutlineInputBorder()
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder()
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ElevatedButton(
              onPressed: () {
                controller.register(username: usernameController.text, email: emailController.text, country: countryController.text,
                 phone: phoneController.text, password: passwordController.text);
              },
             style: ElevatedButton.styleFrom(
              fixedSize: Size(400, 40),
              foregroundColor: Colors.white,
              backgroundColor: Colors.lightBlue
             ),
             child: Text("Register")),
          )
        ],
      ),
    );
  }
}