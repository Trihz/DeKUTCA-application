import 'package:dekutca/DataClasses/innovatia_data_class.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:google_fonts/google_fonts.dart';

class Innovatia extends StatefulWidget {
  const Innovatia({super.key});

  @override
  State<Innovatia> createState() => _InnovatiaState();
}

class _InnovatiaState extends State<Innovatia> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 34, 51, 105);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  //variables to store the meeting details
  String venue = '';
  String time = '';
  String day = '';

  // variables to store the leaders details
  String innovatiaCordinator = "Mary Mbaire";
  String innovatiaViceCordinator = "Paul Brian";
  String innovatiaSecretary = "Mary Mbaire";
  String innovatiaTreasurer = "Paul Brian";
  String innovatiaCordinatorNumber = "*********";
  String innovatiaViceCordinatorNumber = "*********";
  String innovatiaSecretaryNumber = "*********";
  String innovatiaTreasurerNumber = "*********";

  // function to get the choir meeting details
  void readMeetingDetails() {
    Query reference = FirebaseDatabase.instance.ref().child("Other Groups");
    reference.once().then((event) {
      InnovatiaDataClass innovatiaDataClass = InnovatiaDataClass(
          event.snapshot
              .child("Dance")
              .child("Meetings")
              .child('Day')
              .value
              .toString(),
          event.snapshot
              .child("Dance")
              .child("Meetings")
              .child('Time')
              .value
              .toString(),
          event.snapshot
              .child("Dance")
              .child("Meetings")
              .child("Venue")
              .value
              .toString());
      setState(() {
        venue = innovatiaDataClass.getVenue;
        time = innovatiaDataClass.getTime;
        day = innovatiaDataClass.getDay;
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
                          'Innovatia (Dance)',
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
                          '"Let them praise His name with dancing\n  (Psalm 149:3)"',
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
                                                    innovatiaCordinator,
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
                                                    innovatiaCordinatorNumber,
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
                                                    innovatiaViceCordinator,
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
                                                    innovatiaViceCordinatorNumber,
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
                                                    innovatiaSecretary,
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
                                                    innovatiaSecretaryNumber,
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
                                                    innovatiaTreasurer,
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
                                                    innovatiaTreasurerNumber,
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
                              fontSize: 17,
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
                              .child("Dance")
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
                                        fontSize: 13,
                                        color: mainColor1,
                                        fontStyle: FontStyle.italic,
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
