
import 'package:assignment_2/screens/tab_controller.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MainScreen());
}


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      title: "Flutter App",
      home: const BottomNavigationBarPage(),
    );
  }
}



