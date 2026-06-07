import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class GetxLogin extends StatelessWidget {
  GetxLogin({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
  final AuthController controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
              labelText: "Username"
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: "Password"
            ),
            
          ),
          ElevatedButton(
            onPressed: () {
              controller.login(userName:usernameController.text , 
              password: passwordController.text);
            }, 
          child: Text("Login")),

          // ElevatedButton(
          // onPressed: () {
          //   controller.logout();
          // }
          // ,child:Text("Logout"),),

        ],
      ),
    );
  }
}