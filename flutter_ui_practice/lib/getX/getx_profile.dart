import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controller/auth_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class GetxProfile extends StatelessWidget {
   GetxProfile({super.key});

   final AuthController authController = Get.put(AuthController());
   
  final getStorage = GetStorage();


  @override
  Widget build(BuildContext context) {
    String username = getStorage.read('username')?? '';
    String registerUsername = getStorage.read('registerUsername') ?? '';
    return  Scaffold(
      body: Obx(() 
      {
        return Column(
        children: [
          SizedBox(height: 30,),
          Text(username),
          Text(registerUsername),
          Text("Hello ${authController.username.value}"),
          Text("Register username = ${authController.registerUsername.value}"),
          Text("Register email = ${authController.registerEmail.value}"),
          ElevatedButton(onPressed: () {
             authController.logout();
          }, child: Text("Logout"))

        ],
      );
      }),
     
    );
  }
}