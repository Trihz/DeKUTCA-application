import 'package:flutter/material.dart';

class Confession extends StatefulWidget {
  const Confession({Key? key}) : super(key: key);

  @override
  State<Confession> createState() => _ConfessionState();
}

class _ConfessionState extends State<Confession> {
  String iconfeessToYou =
      "I confess to almighty God, and to you, my brothers and sisters, that I have sinned through my own fault, in my thoughts and in my words, in what I have done, and in what I have failed to do; and I ask blessed Mary, ever virgin, all the angels and saints, and you, my brothers and sisters, to pray for me to the Lord our God.";
  String actOfContrition =
      "O my God, I am heartily sorry for having offended Thee, and I detest all my sins because of Thy just punishments, but most of all because they offend Thee, my God, Who art all-good and deserving of all my love. I firmly resolve, with the help of Thy grace, to sin no more and to avoid the near occasions of sin.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 1,
            child: const Center(
              child: Text(
                "Confession Prayers",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green),
              ),
            ),
          ),
          Divider(
            height: 10,
            thickness: 0.5,
            indent: MediaQuery.of(context).size.width * 0.03,
            endIndent: MediaQuery.of(context).size.width * 0.03,
            color: Colors.green,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.85,
            width: MediaQuery.of(context).size.width * 1,
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      actOfContrition,
                      style: const TextStyle(
                          fontSize: 15, height: 2, color: Colors.black),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text(
                      iconfeessToYou,
                      style: const TextStyle(
                          fontSize: 15, height: 2, color: Colors.black),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
