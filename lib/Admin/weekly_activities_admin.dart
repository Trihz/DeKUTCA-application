import 'package:flutter/material.dart';

class WeeklyActivitiesAdmin extends StatefulWidget {
  const WeeklyActivitiesAdmin({super.key});

  @override
  State<WeeklyActivitiesAdmin> createState() => _WeeklyActivitiesAdminState();
}

class _WeeklyActivitiesAdminState extends State<WeeklyActivitiesAdmin> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 45, 77, 106);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Weekly Activities",
            style: TextStyle(
                color: mainColor1, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            "* Secretary(Executive)",
            style: TextStyle(
                fontStyle: FontStyle.italic, color: mainColor1, fontSize: 12),
          ),
          Text(
            "* V.Secretary(Executive)",
            style: TextStyle(
                fontStyle: FontStyle.italic, color: mainColor1, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
