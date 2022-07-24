import 'package:dekutca/announcements.dart';
import 'package:dekutca/scc_routine.dart';
import 'package:dekutca/sunday.dart';
import 'package:dekutca/sunday_routine.dart';
import 'package:dekutca/welfare.dart';
import 'package:flutter/material.dart';

import 'events.dart';

class SundayRoutine extends StatefulWidget {
  const SundayRoutine({super.key});

  @override
  State<SundayRoutine> createState() => _SundayRoutineState();
}

class _SundayRoutineState extends State<SundayRoutine>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
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
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.pink,
                controller: tabController,
                indicator: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.pink,
                ),
                tabs: const [
                  Tab(
                    text: "MASS",
                  ),
                  Tab(
                    text: "SCC",
                  ),
                ]),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 1,
            child: TabBarView(
              controller: tabController,
              children: [const Sunday(), SCC_Routine()],
            ),
          ),
        ],
      ),
    ));
  }
}
