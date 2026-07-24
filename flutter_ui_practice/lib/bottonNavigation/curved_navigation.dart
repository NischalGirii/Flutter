import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Account/createAccount.dart';
import 'package:flutter_application_1/Account/homeAccount.dart';
import 'package:flutter_application_1/Profile%20and%20View%20Page/truecaller.dart';


class CurvedNavigation extends StatefulWidget {
  const CurvedNavigation({super.key});

  @override
  State<CurvedNavigation> createState() => _CurvedNavigationState();
}

class _CurvedNavigationState extends State<CurvedNavigation> {
int _currentIndex = 0;
  final List<Widget> _screens = [
    Homeaccount(),
    Createaccount(),
    Truecaller()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // currentIndex: _currentIndex,
        items: [
         Icon(Icons.home),
         Icon(Icons.create),
         Icon(Icons.call_end),

        ],),
    );
  }
}