import 'package:dekutca/Groups/groups.dart';
import 'package:dekutca/Homepage/homescreen.dart';
import 'package:dekutca/Leaders/leaders.dart';
import 'package:dekutca/Prayers/prayers.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 34, 51, 105);

  // main color 2
  Color mainColor2 = Color.fromARGB(255, 46, 139, 57);

  // variable to store the indexes
  int currentIndex = 0;

// variable to store the different screens to be displayed
  final screens = [
    const Homescreen(),
    const Announcement(),
    const Leaders(),
    const Readings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: mainColor1,
        selectedItemColor: mainColor2,
        iconSize: 20,
        elevation: 10,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work_sharp),
            label: 'Groups',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Leaders'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Prayers'),
        ],
      ),
    );
  }
}
