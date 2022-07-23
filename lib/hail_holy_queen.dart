import 'package:flutter/material.dart';

class HailHolyQueen extends StatefulWidget {
  const HailHolyQueen({Key? key}) : super(key: key);

  @override
  State<HailHolyQueen> createState() => _HailHolyState();
}

class _HailHolyState extends State<HailHolyQueen> {
  String hailHolyQueen =
      "Hail, holy Queen, Mother of mercy, hail, our life, our sweetness and our hope. To thee do we cry, poor banished children of Eve: to thee do we send up our sighs, mourning and weeping in this vale of tears. Turn then, most gracious Advocate, thine eyes of mercy toward us, and after this our exile, show unto us the blessed fruit of thy womb, Jesus, O merciful, O loving, O sweet Virgin Mary! Amen";
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
                "Hail,Holy Queen",
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
                      hailHolyQueen,
                      style: const TextStyle(
                          fontSize: 15, height: 2, color: Colors.black),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const Center(
                      child: Text(
                        "AMEN",
                        style: TextStyle(
                            fontSize: 15, height: 2, color: Colors.black),
                      ),
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
