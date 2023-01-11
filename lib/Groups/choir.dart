import 'package:dekutca/DataClasses/choir_data_class.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:google_fonts/google_fonts.dart';

class Choir extends StatefulWidget {
  const Choir({super.key});

  @override
  State<Choir> createState() => _ChoirState();
}

class _ChoirState extends State<Choir> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 34, 51, 105);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  //variables to store the meeting details
  String venue = '';
  String time = '';
  String day = '';

  // variables to store the leaders details
  String choirCordinator = "Mary Mbaire";
  String choirViceCordinator = "Paul Brian";
  String choirSecretary = "Mary Mbaire";
  String choirTreasurer = "Paul Brian";
  String choirCordinatorNumber = "*********";
  String choirViceCordinatorNumber = "*********";
  String choirSecretaryNumber = "*********";
  String choirTreasurerNumber = "*********";

  // function to get the choir meeting details
  void readMeetingDetails() {
    Query reference = FirebaseDatabase.instance.ref().child("Other Groups");
    reference.once().then((event) {
      ChoirDataClass choirDataClass = ChoirDataClass(
          event.snapshot
              .child("Choir")
              .child("Meetings")
              .child('Day')
              .value
              .toString(),
          event.snapshot
              .child("Choir")
              .child("Meetings")
              .child('Time')
              .value
              .toString(),
          event.snapshot
              .child("Choir")
              .child("Meetings")
              .child("Venue")
              .value
              .toString());
      setState(() {
        venue = choirDataClass.getChoirVenue;
        time = choirDataClass.getChoirTime;
        day = choirDataClass.getChoirDay;
      });
    });
  }

  //initial function
  @override
  void initState() {
    readMeetingDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    color: mainColor1,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
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
                          'Choir',
                          style: GoogleFonts.ebGaramond(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Center(
                        child: Text(
                          '"Serve the LORD with gladness;Come before His presence with singing.\n(Psalm 100:2)"',
                          style: GoogleFonts.ebGaramond(
                            fontSize: 11,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration:
                            const BoxDecoration(color: Colors.transparent)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.42,
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
                              color: Color.fromRGBO(255, 255, 255, 1)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                width: MediaQuery.of(context).size.width * 0.42,
                                child: Image.asset("assets/members.png"),
                              ),
                              Text(
                                "Members:  Any CA member",
                                style: GoogleFonts.ebGaramond(
                                    fontSize: 12, color: mainColor1),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.42,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                width: MediaQuery.of(context).size.width * 0.42,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Image.asset("assets/meeting.png"),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.09,
                                width: MediaQuery.of(context).size.width * 0.42,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      venue,
                                      style: GoogleFonts.ebGaramond(
                                          fontSize: 12, color: mainColor1),
                                    ),
                                    Text(
                                      "( $day )",
                                      style: GoogleFonts.ebGaramond(
                                          fontSize: 12, color: mainColor1),
                                    ),
                                    Text(
                                      "( $time )",
                                      style: GoogleFonts.ebGaramond(
                                          fontSize: 12, color: mainColor1),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Leaders',
                                style: GoogleFonts.ebGaramond(
                                    fontSize: 17,
                                    color: mainColor1,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.16,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                                color: mainColor1,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Center(
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.transparent),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.26,
                                            decoration: const BoxDecoration(
                                                color: Colors.transparent),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Co-ordinator:",
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 12,
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    choirCordinator,
                                                    style:
                                                        GoogleFonts.ebGaramond(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white),
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    choirCordinatorNumber,
                                                    style:
                                                        GoogleFonts.ebGaramond(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.white),
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
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.transparent),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.26,
                                            decoration: const BoxDecoration(
                                                color: Colors.transparent),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Vice-Coordinator:",
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 12,
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    choirViceCordinator,
                                                    style:
                                                        GoogleFonts.ebGaramond(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white),
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    choirViceCordinatorNumber,
                                                    style:
                                                        GoogleFonts.ebGaramond(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.white),
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
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.transparent),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.26,
                                            decoration: const BoxDecoration(
                                                color: Colors.transparent),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Secretary:",
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 12,
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    choirSecretary,
                                                    style:
                                                        GoogleFonts.ebGaramond(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white),
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    choirSecretaryNumber,
                                                    style:
                                                        GoogleFonts.ebGaramond(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.white),
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
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.transparent),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    choirTreasurer,
                                                    style:
                                                        GoogleFonts.ebGaramond(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white),
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    choirTreasurerNumber,
                                                    style:
                                                        GoogleFonts.ebGaramond(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.white),
                                                  )))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.01,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.035,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Announcements',
                          style: GoogleFonts.ebGaramond(
                              fontSize: 16,
                              color: mainColor1,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: FirebaseAnimatedList(
                          query: FirebaseDatabase.instance
                              .ref()
                              .child('Other Groups')
                              .child("Choir")
                              .child("Announcements"),
                          itemBuilder: (BuildContext context,
                              DataSnapshot snapshot,
                              Animation<double> animation,
                              int index) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: const EdgeInsets.only(top: 10),
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    snapshot
                                        .child('Announcement')
                                        .value
                                        .toString(),
                                    style: GoogleFonts.ebGaramond(
                                        fontSize: 15,
                                        color: mainColor1,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Divider(
                                    height: 10,
                                    thickness: 0.5,
                                    color: mainColor1,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
