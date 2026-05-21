import 'package:flutter/material.dart';
import 'package:flutter_application_1/Account/homeAccount.dart';
import 'package:flutter_application_1/getX/getx_profile.dart';
import 'package:flutter_application_1/getX/loginGetx.dart';
import 'package:get/get.dart';
class AuthController extends GetxController{
  RxString username = ''.obs;
  RxString registerUsername = ''.obs;
  RxString registerEmail = ''.obs;
  RxString registerCountry = ''.obs;
  RxString registerPhone = ''.obs;
  RxString registerPassword = ''.obs;
  
  final String correctUsername = "admin";
  final String correctPassword = "1234";
  

  void login({
    required String userName,
    required String password,
  })
  {
    if(userName == correctUsername && password == correctPassword){
        // Navigator.push(context, MaterialPageRoute(builder:(context)=>Homeaccount() ));
        username.value = userName;
        Get.to(GetxProfile());
    }
    else{
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Username or Password")));
      Get.snackbar("Login Failed", "Username or Password is incorrect",
      backgroundColor: Colors.red,
      colorText: Colors.white);
    }
  }

  void logout() {
    Get.offAll(GetxLogin());
    username.value = '';
  }

  void register({
    required String username,
    required String email,
    required String country,
    required String phone,
    required String password,
   })
   {
    registerUsername.value = username;
    registerEmail.value = email;
    registerCountry.value = country;
    registerPhone.value = phone;
    registerPassword.value = password;

    Get.to(GetxLogin());
   }
  
}

