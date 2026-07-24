import 'package:flutter/material.dart';
import 'package:flutter_application_1/getX/getx_profile.dart';
import 'package:flutter_application_1/getX/registerGetx.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp( First());
}

class First extends StatelessWidget {
   First({super.key});

  final getStorage = GetStorage();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String? username = getStorage.read('username');
    String? registerUsername = getStorage.read('registerUsername');
    // String? registerEmail = getStorage.read('registerEmail');
    // print("username: $username");
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  username !=null && registerUsername !=null  ? GetxProfile() : Registergetx(),
    );
  }
}


