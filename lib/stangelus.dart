import 'package:flutter/material.dart';

class StAngelus extends StatefulWidget {
  const StAngelus({super.key});

  @override
  State<StAngelus> createState() => _StAngelusState();
}

class _StAngelusState extends State<StAngelus> {
  String theLifeOfStAngelus =
      'Venerated as a saint in many Christian sects, Saint Joseph is a biblical figure who is believed to have been the corporeal father of Jesus Christ. Joseph first appears in the Bible in the gospels of Matthew and Luke; in Matthew, Joseph lineage is traced back to King David. According to the Bible, Joseph was born circa 100 B.C.E. and later wed the Virgin Mary, Jesus mother. He died in Israel circa 1 A.D.Fact and Fiction Everything we know about Saint Joseph, the husband of Mary and the foster father of Jesus, comes from the Bible, and mentions of him are underwhelming. The 13 New Testament books written by Paul (the epistles) make no reference to him at all, nor does the Gospel of Mark, the first of the Gospels. Joseph first appears in the Bible in the gospels of Matthew and Luke, one of which (Matthew) traces Joseph lineage back to King David.';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 32, 136, 36)),
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(220))),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: const Center(
                    child: Text(
                      'St.Angelus',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 32, 136, 36),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.01,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'The Life of St.Angelus',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1, 1),
                            blurRadius: 3,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color.fromRGBO(255, 255, 255, 1)),
                  child: SingleChildScrollView(
                      child: Text(
                    theLifeOfStAngelus,
                    style: const TextStyle(height: 2),
                  )),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Members',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Color.fromARGB(255, 207, 247, 201)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  padding: const EdgeInsets.only(left: 10),
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "School Of Engineering",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color:
                                              Color.fromARGB(255, 32, 136, 36)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Leaders',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Color.fromARGB(255, 207, 247, 201)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.29,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Co-ordinator:",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color:
                                              Color.fromARGB(255, 32, 136, 36)),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent),
                                    child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Stephen Musangi",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 32, 136, 36)),
                                        )))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Color.fromARGB(255, 207, 247, 201)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Vice Co-ordinator:",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color:
                                              Color.fromARGB(255, 32, 136, 36)),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent),
                                    child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Stephen Musangi",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 32, 136, 36)),
                                        )))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Color.fromARGB(255, 207, 247, 201)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.29,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Secretary:",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color:
                                              Color.fromARGB(255, 32, 136, 36)),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent),
                                    child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Nic Musangi",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 32, 136, 36)),
                                        )))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.27,
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Major Events",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1, 1),
                                      blurRadius: 3,
                                      spreadRadius: 1)
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  "Party",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 32, 136, 36)),
                                ),
                                Text(
                                  "Kahawa",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                                Text(
                                  "23-05-2022",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, bottom: 7, left: 5, right: 7),
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1, 1),
                                      blurRadius: 3,
                                      spreadRadius: 1)
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  "Hike",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 32, 136, 36)),
                                ),
                                Text(
                                  "Nyeri Hill",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                                Text(
                                  "23-05-2022",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 1),
                                  blurRadius: 3,
                                  spreadRadius: 1)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color.fromRGBO(255, 255, 255, 1)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "Charity ",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 32, 136, 36)),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  child: const Icon(
                                    Icons.volunteer_activism,
                                    size: 35,
                                    color: Color.fromARGB(255, 32, 136, 36),
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Text(
                                        "Baraka Childrens Home",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                      Text(
                                        "23-05-2022",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
