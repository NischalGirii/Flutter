//stf
import 'package:flutter/material.dart';

class MySecondScreen extends StatefulWidget {
  const MySecondScreen({super.key});

  @override
  State<MySecondScreen> createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {

  //creating variable for check
  bool _checked= false;  // _(underscore is used for local variable)
  bool _switch = false;
  


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Checkbox(
            value: _checked, 
            onChanged: (val)=> setState(() {
            _checked = val!;
          }),
          ),

          Switch(value: _switch,
           onChanged: (val)=>setState(() {
            _switch = val;
          }),),

        


        TextField(
          decoration: InputDecoration(
            labelText: "Enter your name",
            hintText: "Eg. Ram",

          ),

          // onSubmitted: (value) {
          //   print('Name: $value');
          // },
        ),

        // ElevatedButton(onPressed: ()=>print("Name is submitted."), child: Text("Submit")),

        ],
      ),

      

    );
  }
}

