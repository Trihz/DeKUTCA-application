import 'package:dekutca/Groups/alterservants.dart';
import 'package:dekutca/Groups/biblestudy.dart';
import 'package:dekutca/Groups/choir.dart';
import 'package:dekutca/Groups/gents.dart';
import 'package:dekutca/Groups/innovatia.dart';
import 'package:dekutca/Groups/instruments.dart';
import 'package:dekutca/Groups/ladies.dart';
import 'package:dekutca/SCCs/stangelus.dart';
import 'package:dekutca/SCCs/stjospeh.dart';
import 'package:dekutca/Homepage/scc_routine.dart';
import 'package:dekutca/SCCs/stpeter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Announcement extends StatefulWidget {
  const Announcement({Key? key}) : super(key: key);

  @override
  State<Announcement> createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 34, 51, 105);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 1,
            padding: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(color: Colors.white),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 1,
            padding: const EdgeInsets.only(top: 10, left: 15),
            decoration: const BoxDecoration(color: Colors.white),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Main Groups",
                style: GoogleFonts.ebGaramond(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: mainColor2),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 1,
            padding: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Choir()));
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.7,
                          margin: const EdgeInsets.only(
                            left: 15,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(255, 246, 238, 238)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "St. Cecilia (Choir)",
                                    style: GoogleFonts.ebGaramond(
                                        fontSize: 13, color: mainColor1),
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Center(
                                  child: Icon(
                                    Icons.people,
                                    color: mainColor1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Instruments()));
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.7,
                          margin: const EdgeInsets.only(
                            left: 15,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(255, 246, 238, 238)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "St Gabriel (Instruments)",
                                    style: GoogleFonts.ebGaramond(
                                        fontSize: 13, color: mainColor1),
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Center(
                                  child: Icon(
                                    Icons.people,
                                    color: mainColor1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AlterServants()));
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.7,
                          margin: const EdgeInsets.only(
                            left: 15,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(255, 246, 238, 238)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Center(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "St John (Alter Servants)",
                                      style: GoogleFonts.ebGaramond(
                                          fontSize: 13, color: mainColor1),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Center(
                                  child: Icon(
                                    Icons.people,
                                    color: mainColor1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Innovatia()));
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.7,
                          margin: const EdgeInsets.only(
                            left: 15,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(255, 246, 238, 238)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Center(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "St. Vitus Innovatia  (Dance)",
                                      style: GoogleFonts.ebGaramond(
                                          fontSize: 13, color: mainColor1),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Center(
                                  child: Icon(
                                    Icons.people,
                                    color: mainColor1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Ladies()));
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.7,
                          margin: const EdgeInsets.only(
                            left: 15,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(255, 246, 238, 238)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Center(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "St. Catherine (Ladies)",
                                      style: GoogleFonts.ebGaramond(
                                          fontSize: 13, color: mainColor1),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Center(
                                  child: Icon(
                                    Icons.people,
                                    color: mainColor1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Gents()));
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.7,
                          margin: const EdgeInsets.only(
                            left: 15,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(255, 246, 238, 238)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Center(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "St Paul (Gents)",
                                      style: GoogleFonts.ebGaramond(
                                          fontSize: 13, color: mainColor1),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Center(
                                  child: Icon(
                                    Icons.people,
                                    color: mainColor1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width * 1,
            padding: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 1,
                  margin: const EdgeInsets.only(
                    left: 15,
                  ),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Small Christian Communities (SCC)",
                      style: GoogleFonts.ebGaramond(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: mainColor2),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StJoseph()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 5, bottom: 7, left: 5, right: 7),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.25,
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
                            Text(
                              "St. Joseph",
                              style: GoogleFonts.ebGaramond(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: mainColor1),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StPeter()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 5, bottom: 7, left: 5, right: 7),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 1),
                                  blurRadius: 3,
                                  spreadRadius: 1)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "St. Peters",
                              style: GoogleFonts.ebGaramond(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: mainColor1),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StAngelus()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 5, bottom: 7, left: 5, right: 7),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 1),
                                  blurRadius: 3,
                                  spreadRadius: 1)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "St. Angelus",
                              style: GoogleFonts.ebGaramond(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: mainColor1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Text(
                    "Bible Study Groups",
                    style: GoogleFonts.ebGaramond(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: mainColor2),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_circle_right,
                      size: 25,
                      color: mainColor2,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BibleStudy()));
                    },
                  )
                ],
              )),
          Container(
            height: MediaQuery.of(context).size.height * 0.17,
            width: MediaQuery.of(context).size.width * 1,
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                color: mainColor1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "God is with us",
                  style: GoogleFonts.ebGaramond(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white),
                ),
                Text(
                  "\"For where two or three are gathered together in my name, there am I in the midst of them.\"",
                  style: GoogleFonts.ebGaramond(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
