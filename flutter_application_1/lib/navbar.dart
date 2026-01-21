import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
class Navbar extends StatelessWidget {
   final Function(int) onTap;
   Navbar({super.key, required this.onTap});
   
   int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return 
      BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,

        onTap:onTap,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      );
  }
}