import 'package:flutter/material.dart';

class RosaryGuide extends StatefulWidget {
  const RosaryGuide({Key? key}) : super(key: key);

  @override
  State<RosaryGuide> createState() => _RosaryGuideState();
}

class _RosaryGuideState extends State<RosaryGuide> {
  String procedure1 = "1.  Sign of the Cross";
  String procedure2 = "2.  Holding the Crucifix, say the Apostles' Creed";
  String procedure3 = "3.  On the first bead, say an Our Father.";
  String procedure4 = "4.  Say one Hail Mary on each of the next three beads.";
  String procedure5 = "5.  Say the Glory Be";
  String procedure6 =
      "6.  For each of the five decades, announce the Mystery (perhaps followed by a brief reading from Scripture) then say the Our Father.";
  String procedure7 =
      "7.  While fingering each of the ten beads of the decade, next say ten Hail Marys while meditating on the Mystery. Then say a Glory Be.(After finishing each decade, some say the following prayer requested by the Blessed Virgin Mary at Fatima: O my Jesus, forgive us our sins, save us from the fires of hell; lead all souls to Heaven, especially those who have most need of your mercy.)";
  String procedure8 =
      "8.  After saying the five decades, say the Hail, Holy Queen, followed by this dialogue and prayer:V. Pray for us, O holy Mother of God.R. That we may be made worthy of the promises of Christ.Let us pray: O God, whose Only Begotten Son, by his life, Death, and Resurrection, has purchased for us the rewards of eternal life, grant, we beseech thee, that while meditating on these mysteries of the most holy Rosary of the Blessed Virgin Mary, we may imitate what they contain and obtain what they promise, through the same Christ our Lord. Amen.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 1,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 1,
            child: const Center(
              child: Text(
                'Praying the Rosary',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.03,
            width: MediaQuery.of(context).size.width * 1,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/rosaryguide.jpg"),
                    fit: BoxFit.fill)),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: const BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      procedure1,
                      style: const TextStyle(
                          fontSize: 15, height: 2, color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        procedure2,
                        style: const TextStyle(
                            fontSize: 15, height: 2, color: Colors.black),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        procedure3,
                        style: const TextStyle(
                            fontSize: 15, height: 2, color: Colors.black),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        procedure4,
                        style: const TextStyle(
                            fontSize: 15, height: 2, color: Colors.black),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        procedure5,
                        style: const TextStyle(
                            fontSize: 15, height: 2, color: Colors.black),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        procedure6,
                        style: const TextStyle(
                            fontSize: 15, height: 2, color: Colors.black),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        procedure7,
                        style: const TextStyle(
                            fontSize: 15, height: 2, color: Colors.black),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        procedure8,
                        style: const TextStyle(
                          fontSize: 15,
                          height: 2,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
