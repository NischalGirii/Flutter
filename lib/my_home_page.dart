import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final List<String> course = ["BCA", "BIT", "BBA"];
  // Listview
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Product")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) {
            return Divider();
          },
          physics: NeverScrollableScrollPhysics(),
          itemCount: course.length,
          itemBuilder: (context, index) {
            var item = course[index];
            return Text(item, style: TextStyle(fontSize: 20));
          },
        ),
      ),
    );
  }
  // Widget product{
  //   return Row(
  //     children: [

  //     ],
  //   );
  // }
}
