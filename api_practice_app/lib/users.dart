import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  String username = "John";
  List users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Users")),
      body:
          // ListView.separated(
          //   separatorBuilder: (context, index) {
          //     return Divider();
          //   },
          //   itemCount: users.length,
          //   itemBuilder: (context, index) {
          //     var item = users.length;
          //     return
          Container(
            height: 60,
            width: 400,
            decoration: BoxDecoration(color: Colors.amber),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                CircleAvatar(maxRadius: 30, child: Text(username[0])),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text("john@gmail.com"),
                  ],
                ),
                Text("1-570-236-7033"),
                // Text("john@gmail.com"),
                // Text("johnd"),
                // Text("m38rmF"),
                // Text("john"),
                // Text("doe")
              ],
            ),
          ),

      // },
    );
  }

  Future getUser() async {
    Dio dio = Dio();
  }
}
