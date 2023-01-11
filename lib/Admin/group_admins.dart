import 'package:flutter/material.dart';

class GroupAdmins extends StatefulWidget {
  const GroupAdmins({super.key});

  @override
  State<GroupAdmins> createState() => _GroupAdminsState();
}

class _GroupAdminsState extends State<GroupAdmins> {
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
        children:  [
          Text(
            "Groups",
            style: TextStyle(
                color: mainColor1,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "* Co-ordinator",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: mainColor1,
                fontSize: 12),
          ),
          Text(
            "* Secretary",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: mainColor1,
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}
