import 'package:dekutca/Homepage/announcements.dart';
import 'package:dekutca/Homepage/scc_routine.dart';
import 'package:dekutca/Homepage/sunday.dart';
import 'package:dekutca/Homepage/sunday_routine.dart';
import 'package:dekutca/Homepage/welfare.dart';
import 'package:flutter/material.dart';

import 'events.dart';

class SundayRoutine extends StatefulWidget {
  const SundayRoutine({super.key});

  @override
  State<SundayRoutine> createState() => _SundayRoutineState();
}

class _SundayRoutineState extends State<SundayRoutine>
    with TickerProviderStateMixin {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 34, 51, 105);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  @override
  Widget build(BuildContext context) {
    TabController tabController =
        TabController(length: 2, vsync: this, initialIndex: 0);
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.9,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.9,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 5,
                      spreadRadius: 1)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: mainColor2,
                controller: tabController,
                indicator: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  color: mainColor2,
                ),
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("MASS",
                            style: TextStyle(fontWeight: FontWeight.w900)),
                        Icon(Icons.church_outlined),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("SCC",
                            style: TextStyle(fontWeight: FontWeight.w900)),
                        Icon(Icons.group),
                      ],
                    ),
                  ),
                ]),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 1,
            child: TabBarView(
              controller: tabController,
              children: const [Sunday(), SCC_Routine()],
            ),
          ),
        ],
      ),
    ));
  }
}
