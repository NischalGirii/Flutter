import 'package:flutter/material.dart';
import 'package:flutter_application_1/Account/createAccount.dart';
import 'package:flutter_application_1/Account/homeAccount.dart';
import 'package:flutter_application_1/Profile%20and%20View%20Page/truecaller.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class GoogelNavigation extends StatefulWidget {
  const GoogelNavigation({super.key});

  @override
  State<GoogelNavigation> createState() => _GoogelNavigationState();
}

class _GoogelNavigationState extends State<GoogelNavigation> {
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
      bottomNavigationBar: GNav(
        // onTap: (index) {
        //   setState(() {
        //     _currentIndex = index;
        //   });
        // },
        // currentIndex: _currentIndex,
        tabs: [
         GButton(
          icon: Icons.home,
          text: 'Home',
         ),
         GButton(
          icon: Icons.abc_outlined,
          text: 'Create',
         ),
         GButton(
          icon: Icons.call,
          text: 'TrueCaller'),
          


        ],),
    );
  }
}