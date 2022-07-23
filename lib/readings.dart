import 'package:flutter/material.dart';

class Readings extends StatefulWidget {
  const Readings({Key? key}) : super(key: key);

  @override
  State<Readings> createState() => _ReadingsState();
}

class _ReadingsState extends State<Readings> {
  String firstReading =
      'Venerated as a saint in many Christian sects, Saint Joseph is a biblical figure who is believed to have been the corporeal father of Jesus Christ. Joseph first appears in the Bible in the gospels of Matthew and Luke; in Matthew, Joseph lineage is traced back to King David. According to the Bible, Joseph was born circa 100 B.C.E. and later wed the Virgin Mary, Jesus mother. He died in Israel circa 1 A.D.Fact and Fiction Everything we know about Saint Joseph, the husband of Mary and the foster father of Jesus, comes from the Bible, and mentions of him are underwhelming. The 13 New Testament books written by Paul (the epistles) make no reference to him at all, nor does the Gospel of Mark, the first of the Gospels. Joseph first appears in the Bible in the gospels of Matthew and Luke, one of which (Matthew) traces Joseph lineage back to King David';
  String kiitikio =
      'Venerated as a saint in many Christian sects, Saint Joseph is a biblical figure who is believed to have been the corporeal father of Jesus Christ. Joseph first appears in the Bible in the gospels of Matthew and Luke; in Matthew, Joseph lineage is traced back to King David. According to the Bible, Joseph was born circa 100 B.C.E. and later wed the Virgin Mary, Jesus mother. He died in Israel circa 1 A.D.Fact and Fiction Everything we know about Saint Joseph, the husband of Mary and the foster father of Jesus, comes from the Bible, and mentions of him are underwhelming. The 13 New Testament books written by Paul (the epistles) make no reference to him at all, nor does the Gospel of Mark, the first of the Gospels. Joseph first appears in the Bible in the gospels of Matthew and Luke, one of which (Matthew) traces Joseph lineage back to King David';
  String secondReading =
      'Venerated as a saint in many Christian sects, Saint Joseph is a biblical figure who is believed to have been the corporeal father of Jesus Christ. Joseph first appears in the Bible in the gospels of Matthew and Luke; in Matthew, Joseph lineage is traced back to King David. According to the Bible, Joseph was born circa 100 B.C.E. and later wed the Virgin Mary, Jesus mother. He died in Israel circa 1 A.D.Fact and Fiction Everything we know about Saint Joseph, the husband of Mary and the foster father of Jesus, comes from the Bible, and mentions of him are underwhelming. The 13 New Testament books written by Paul (the epistles) make no reference to him at all, nor does the Gospel of Mark, the first of the Gospels. Joseph first appears in the Bible in the gospels of Matthew and Luke, one of which (Matthew) traces Joseph lineage back to King David';
  String gospel =
      'Venerated as a saint in many Christian sects, Saint Joseph is a biblical figure who is believed to have been the corporeal father of Jesus Christ. Joseph first appears in the Bible in the gospels of Matthew and Luke; in Matthew, Joseph lineage is traced back to King David. According to the Bible, Joseph was born circa 100 B.C.E. and later wed the Virgin Mary, Jesus mother. He died in Israel circa 1 A.D.Fact and Fiction Everything we know about Saint Joseph, the husband of Mary and the foster father of Jesus, comes from the Bible, and mentions of him are underwhelming. The 13 New Testament books written by Paul (the epistles) make no reference to him at all, nor does the Gospel of Mark, the first of the Gospels. Joseph first appears in the Bible in the gospels of Matthew and Luke, one of which (Matthew) traces Joseph lineage back to King David';
  String readings = '';
  String readingsTitle = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 1,
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
              color: Color.fromARGB(255, 45, 50, 89)),
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Readings",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.white),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.55,
          width: MediaQuery.of(context).size.width * 1,
          padding: const EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Sunday",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromARGB(255, 45, 50, 89)),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.48,
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 222, 218, 222)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        readingsTitle,
                        style: const TextStyle(
                            height: 2,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        readings,
                        style: const TextStyle(
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.18,
          width: MediaQuery.of(context).size.width * 1,
          padding: const EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        readingsTitle = 'First Reading';
                        readings = firstReading;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 5, bottom: 7),
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.28,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(2, 2),
                                blurRadius: 5,
                                spreadRadius: 1)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.pink),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "1st Reading",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          readingsTitle = 'Responsorial psalms';
                          readings = firstReading;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 5, bottom: 7),
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.28,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                  spreadRadius: 1)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.pink),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "Responsorial\npsalm",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          readingsTitle = 'Second Reading';
                          readings = firstReading;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 5, bottom: 7),
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.28,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                  spreadRadius: 1)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.pink),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "2nd Reading",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          readingsTitle = 'Gospel';
                          readings = firstReading;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 5, bottom: 7),
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.28,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                  spreadRadius: 1)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.pink),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "Gospel",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
