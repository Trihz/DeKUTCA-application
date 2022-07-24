import 'package:dekutca/groups.dart';
import 'package:dekutca/homescreen.dart';
import 'package:dekutca/leaders.dart';
import 'package:dekutca/prayers.dart';
import 'package:dekutca/readings.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // variable to store the indexes
  int currentIndex = 1;

// variable to store the different screens to be displayed
  final screens = [
    const Homescreen(),
    const Announcement(),
    const Readings(),
    const Leaders()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Color.fromARGB(255, 45, 50, 89),
        selectedItemColor: Color.fromARGB(255, 45, 50, 89),
        iconSize: 20,
        elevation: 10,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Groups',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.church), label: 'Readings'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Leaders'),
        ],
      ),
    );
  }
}
