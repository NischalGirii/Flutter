import 'package:flutter/material.dart';
import 'package:flutter_application_1/Account/createAccount.dart';
import 'package:flutter_application_1/Account/homeAccount.dart';
import 'package:flutter_application_1/Profile%20and%20View%20Page/truecaller.dart';

class BottonNavigation extends StatefulWidget {
  const BottonNavigation({super.key});

  @override
  State<BottonNavigation> createState() => _BottonNavigationState();
}

class _BottonNavigationState extends State<BottonNavigation> {
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            label: 'Create'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_end_rounded),
            label: 'TrueCaller'
            ),

        ],),
    );
  }
}