import 'package:assignment_2/screens/first_page.dart';
import 'package:assignment_2/screens/second_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {

   final _pages = [
      FirstPage(),
    SecondPage(),
 
  ];

  int _selectedPageIndex = 0;

  void _selectIndex(index)
  {
   setState(() {
     _selectedPageIndex = index;
   });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedPageIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectIndex,
        currentIndex: _selectedPageIndex,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Screen 2")
      ]),
    );
  }
}