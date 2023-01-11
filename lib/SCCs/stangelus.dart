import 'package:dekutca/DataClasses/stangelus_data_class.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:google_fonts/google_fonts.dart';

class StAngelus extends StatefulWidget {
  const StAngelus({super.key});

  @override
  State<StAngelus> createState() => _StAngelusState();
}

class _StAngelusState extends State<StAngelus> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 34, 51, 105);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  // variables for storing leaders details
  String stAngelusCordinator = "Paul Brian";
  String stAngelusViceCordinator = "Paul Brian";
  String stAngelusSecretary = "Paul Brian";
  String stAngelusTreasurer = "Paul Brian";
  String stAngelusCordinatorNumber = "*********";
  String stAngelusViceCordinatorNumber = "*********";
  String stAngelusSecretaryNumber = "*********";
  String stAngelusTreasurerNumber = "*********";

  // variables for storing the SCCs activities details
  String partyVenue = '';
  String partyDate = '';
  String hikeVenue = '';
  String hikeDate = '';
  String charityVenue = '';
  String charityTime = '';

  String theLifeOfStJoseph =
      'Venerated as a saint in many Christian sects, Saint Joseph is a biblical figure who is believed to have been the corporeal father of Jesus Christ. Joseph first appears in the Bible in the gospels of Matthew and Luke; in Matthew, Joseph lineage is traced back to King David. According to the Bible, Joseph was born circa 100 B.C.E. and later wed the Virgin Mary, Jesus mother. He died in Israel circa 1 A.D.Fact and Fiction Everything we know about Saint Joseph, the husband of Mary and the foster father of Jesus, comes from the Bible, and mentions of him are underwhelming. The 13 New Testament books written by Paul (the epistles) make no reference to him at all, nor does the Gospel of Mark, the first of the Gospels. Joseph first appears in the Bible in the gospels of Matthew and Luke, one of which (Matthew) traces Joseph lineage back to King David.';

  // function to read the activities details from the database
  void readActivitesDetails() {
    Query reference = FirebaseDatabase.instance
        .ref()
        .child("SCC")
        .child("St Angelus")
        .child("Activities");
    reference.onValue.listen((event) {
      StAngelusDataClass stAngelusDataClass = StAngelusDataClass(
          event.snapshot.child("Party Venue").value.toString(),
          event.snapshot.child("Party Time").value.toString(),
          event.snapshot.child("Hike Venue").value.toString(),
          event.snapshot.child("Hike Time").value.toString(),
          event.snapshot.child("Charity Venue").value.toString(),
          event.snapshot.child("Charity Date").value.toString());

      setState(() {
        partyVenue = stAngelusDataClass.getPartyVenue;
        partyDate = stAngelusDataClass.getPartyDate;
        hikeVenue = stAngelusDataClass.getHikeVenue;
        hikeDate = stAngelusDataClass.getHikeDate;
        charityVenue = stAngelusDataClass.getCharityVenue;
        charityTime = stAngelusDataClass.getCharityDate;
      });
    });
  }

  // initial function
  @override
  void initState() {
    readActivitesDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(color: mainColor1),
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.43,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Center(
                          child: Text(
                            'St.Angelus',
                            style: GoogleFonts.ebGaramond(
                                fontSize: 20,
                                color: mainColor1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.01,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: mainColor1,
                                  offset: const Offset(1, 1),
                                  blurRadius: 3,
                                  spreadRadius: 1)
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                        child: SingleChildScrollView(
                            child: Text(
                          theLifeOfStJoseph,
                          style: GoogleFonts.ebGaramond(height: 2),
                        )),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.57,
                  width: MediaQuery.of(context).size.width * 0.99,
                  decoration: BoxDecoration(
                    color: mainColor1,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.width * 0.9,
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Members',
                                  style: GoogleFonts.ebGaramond(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Center(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.transparent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "School Of Business",
                                            style: GoogleFonts.ebGaramond(
                                                fontSize: 13,
                                                color: Colors.white),
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
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.width * 0.9,
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Leaders',
                                  style: GoogleFonts.ebGaramond(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Center(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.transparent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.26,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Co-ordinator:",
                                            style: GoogleFonts.ebGaramond(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w200,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.31,
                                          decoration: const BoxDecoration(
                                              color: Colors.transparent),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                stAngelusCordinator,
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ))),
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.19,
                                          decoration: const BoxDecoration(
                                              color: Colors.transparent),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                stAngelusCordinatorNumber,
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 10,
                                                    color: Colors.white),
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.transparent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.26,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Vice-Coordinator:",
                                            style: GoogleFonts.ebGaramond(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w200,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.31,
                                          decoration: const BoxDecoration(
                                              color: Colors.transparent),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                stAngelusViceCordinator,
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ))),
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.19,
                                          decoration: const BoxDecoration(
                                              color: Colors.transparent),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                stAngelusViceCordinatorNumber,
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 10,
                                                    color: Colors.white),
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.transparent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.26,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Treasurer:",
                                            style: GoogleFonts.ebGaramond(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w200,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.31,
                                          decoration: const BoxDecoration(
                                              color: Colors.transparent),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                stAngelusTreasurer,
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ))),
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.19,
                                          decoration: const BoxDecoration(
                                              color: Colors.transparent),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                stAngelusTreasurerNumber,
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 10,
                                                    color: Colors.white),
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
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.width * 0.9,
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Major Events",
                                  style: GoogleFonts.ebGaramond(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.transparent,
                                            offset: Offset(1, 1),
                                            blurRadius: 3,
                                            spreadRadius: 1)
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Party",
                                        style: GoogleFonts.ebGaramond(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w900,
                                            color: mainColor1),
                                      ),
                                      Text(
                                        partyVenue,
                                        style: GoogleFonts.ebGaramond(
                                            fontSize: 10, color: mainColor1),
                                      ),
                                      Text(
                                        partyDate,
                                        style: GoogleFonts.ebGaramond(
                                            fontSize: 10, color: mainColor1),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 5, bottom: 7, left: 5, right: 7),
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.transparent,
                                            offset: Offset(1, 1),
                                            blurRadius: 3,
                                            spreadRadius: 1)
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Hike",
                                        style: GoogleFonts.ebGaramond(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w900,
                                            color: mainColor1),
                                      ),
                                      Text(
                                        hikeVenue,
                                        style: GoogleFonts.ebGaramond(
                                            fontSize: 10, color: mainColor1),
                                      ),
                                      Text(
                                        hikeDate,
                                        style: GoogleFonts.ebGaramond(
                                            fontSize: 10, color: mainColor1),
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
                                        color: Colors.transparent,
                                        offset: Offset(1, 1),
                                        blurRadius: 3,
                                        spreadRadius: 1)
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.white),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Charity ",
                                    style: GoogleFonts.ebGaramond(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w900,
                                        color: mainColor1),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        child: Icon(
                                          Icons.volunteer_activism,
                                          size: 35,
                                          color: mainColor1,
                                        ),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.06,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              charityVenue,
                                              style: GoogleFonts.ebGaramond(
                                                  fontSize: 10,
                                                  color: mainColor1),
                                            ),
                                            Text(
                                              charityTime,
                                              style: GoogleFonts.ebGaramond(
                                                  fontSize: 10,
                                                  color: mainColor1),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
