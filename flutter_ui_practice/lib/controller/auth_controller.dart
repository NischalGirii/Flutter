import 'package:flutter/material.dart';
import 'package:flutter_application_1/getX/getx_profile.dart';
import 'package:flutter_application_1/getX/loginGetx.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
class AuthController extends GetxController{
  RxString username = ''.obs;
  RxString registerUsername = ''.obs;
  RxString registerEmail = ''.obs;
  RxString registerCountry = ''.obs;
  RxString registerPhone = ''.obs;
  RxString registerPassword = ''.obs;

  final getStorage = GetStorage();

@override
  void onInit() {
    super.onInit();

    //read stored username
    username.value = getStorage.read('username') ?? '';
    registerUsername.value = getStorage.read('registerUsername') ?? '';
    registerEmail.value = getStorage.read('registerEmail') ?? '';
    registerCountry.value = getStorage.read('registerCountry') ?? '';
    registerPhone.value = getStorage.read('registerPhone') ?? '';
    registerPassword.value = getStorage.read('registerPassword') ?? '';
  }
  
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
        getStorage.write('username', userName);
        print('username from login: ${getStorage.read('username')}');
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
      getStorage.remove('username');
    getStorage.remove('registerUsername');
    getStorage.remove('registerEmail');
    // authController.remove('');
    Get.offAll(GetxLogin());
    

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



    getStorage.write('registerUsername', username);
    getStorage.write('registerEmail',email);
    
    Get.to(GetxLogin());
   }
  
}

