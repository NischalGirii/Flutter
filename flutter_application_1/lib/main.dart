import 'package:flutter/material.dart';
import 'package:flutter_application_1/card.dart';
import 'package:flutter_application_1/cardsir.dart';
import 'package:flutter_application_1/design.dart';
import 'package:flutter_application_1/designR.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/project.dart';
import 'package:flutter_application_1/register.dart';
import 'package:flutter_application_1/stack.dart';

void main() {
  runApp(const First());
}

class First extends StatelessWidget {
  const First({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Registeruser(),
    );
  }
}


