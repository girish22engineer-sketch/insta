import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:get/get.dart';

import 'accountpage.dart';
import 'addpost.dart';
import 'homepage.dart';
import 'messagepage.dart';
import 'notificationpage.dart';
import 'reels.dart';
import 'searchpage.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Homepage(),
    Searchpage(),
    Addpost(),
    Reels(),
    Accountpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      // ✅ SAME APPBAR FOR ALL PAGES
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Instagram',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(Notificationpage());
            },
            icon: const Icon(Icons.favorite_border, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Get.to(Messagepage());
            },
            icon: const Icon(Icons.messenger_outline, color: Colors.white),
          ),
        ],
      ),

      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Navbar(

          onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

      ),

     
    );
  }
}
