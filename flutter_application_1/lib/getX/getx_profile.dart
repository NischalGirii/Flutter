import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controller/auth_controller.dart';
import 'package:get/get.dart';


class GetxProfile extends StatelessWidget {
   GetxProfile({super.key});

   final AuthController authController = Get.find<AuthController>();
   
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Obx(() 
      {
        return Column(
        children: [
          SizedBox(height: 30,),
          Text("Hello ${authController.username.value}"),
          Text("Register username = ,${authController.registerUsername.value}"),
          ElevatedButton(onPressed: () {
             authController.logout();
          }, child: Text("Logout"))

        ],
      );
      }),
     
    );
  }
}