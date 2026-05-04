import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
   Listview({super.key});


  final List<Map<String, dynamic>> students = [
    {"name": "Nischal","age": 20,"grade":"A"},
    {"name": "Ram","age": 22,"grade":"B+"},
    {"name": "Hari","age": 19,"grade":"A"},
    {"name": "Krishna","age": 23,"grade":"B+"},
    {"name": "Shyam","age": 20,"grade":"A"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(students[index]["name"][0]),
              ),
              title: Text(students[index]["name"]),
            ),
          );
        }
        ),
    );
  }
}