import 'package:flutter/material.dart';
import 'package:newproject/Screens/login.dart';
// import 'Screens/login.dart';
import 'Screens/Pages/Profilepage.dart';
import 'Screens/RegistrsationPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectIndex = 0;

  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _children = [
    MyHomePage(),
    Projectpage(),
    RegistrationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _children[_selectIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectIndex,
            onTap: _navigateBottomNavBar,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.login), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.report), label: 'Profile'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.app_registration), label: 'Registration'),
            ]),
      ),
    );
  }
}
