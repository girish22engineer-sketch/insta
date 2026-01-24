import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'accountpage.dart';
import 'add_post.dart';
import 'homepage.dart';
import 'messagepage.dart';

import 'notificationpage.dart';
import 'reelspage.dart';
import 'searchpage.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = <Widget>[
     Homepage(),
     Searchpage(),
     AddPost(),
     Reels(),
     Accountpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Instagram',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () => Get.to(const Notificationpage()),
            icon: const Icon(Icons.favorite_border, color: Colors.white),
          ),
          IconButton(
            onPressed: () => Get.to(const Messagepage()),
            icon: const Icon(Icons.messenger_outline, color: Colors.white),
          ),
        ],
      ),

      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),

      bottomNavigationBar: NavigationBar(
        
        backgroundColor: Colors.black,
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home,), label: "home",),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.add_box), label: 'Add'),
          NavigationDestination(icon: Icon(Icons.play_arrow), label: 'Reels'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
