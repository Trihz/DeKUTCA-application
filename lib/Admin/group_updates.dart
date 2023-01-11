import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class GroupUpdates extends StatefulWidget {
  const GroupUpdates({super.key});

  @override
  State<GroupUpdates> createState() => _GroupUpdatesState();
}

class _GroupUpdatesState extends State<GroupUpdates> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 45, 77, 106);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  // variables for storing the updates to be taken to the database
  String groupVenue = '';
  String groupTime = '';
  String groupDay = '';
  String announcement = '';

  //variabe to store which  group has been choosen
  String groupChoosen = 'St.Cecilia (Choir)';

  // this variable sets the initial value for the dropdown
  String initialValue = "St.Cecilia (Choir)";

  // this variable stores the dropdown items
  var dropdownItems = [
    "St.Cecilia (Choir)",
    "St.Gabriel (Instruments)",
    "St.John (Alter sevants)",
    "St.Vitus (Dance)",
    "St.Catherine (Ladies)",
    "St.Paul (Gents)",
  ];

  /*
    functions to modify the other groups details
  */
  void sendLadiesDetailsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('Other Groups')
          .child("Ladies")
          .child("Meetings")
          .set({'Venue': groupVenue, 'Time': groupTime, 'Day': groupDay});
    });
  }

  void sendGentsDetailsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('Other Groups')
          .child("Gents")
          .child("Meetings")
          .set({'Venue': groupVenue, 'Time': groupTime, 'Day': groupDay});
    });
  }

  void sendChoirDetailsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('Other Groups')
          .child("Choir")
          .child("Meetings")
          .set({'Venue': groupVenue, 'Time': groupTime, 'Day': groupDay});
    });
  }

  void sendInstrumentsDetailsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('Other Groups')
          .child("Instruments")
          .child("Meetings")
          .set({'Venue': groupVenue, 'Time': groupTime, 'Day': groupDay});
    });
  }

  void sendDanceDetailsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('Other Groups')
          .child("Dance")
          .child("Meetings")
          .set({'Venue': groupVenue, 'Time': groupTime, 'Day': groupDay});
    });
  }

  void sendAlterServantsDetailsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('Other Groups')
          .child("Alter Servants")
          .child("Meetings")
          .set({'Venue': groupVenue, 'Time': groupTime, 'Day': groupDay});
    });
  }

  void modifyDetails() {
    if (groupChoosen == "St.Paul (Gents)") {
      sendGentsDetailsToDatabase();
    } else if (groupChoosen == "St.Catherine (Ladies)") {
      sendLadiesDetailsToDatabase();
    } else if (groupChoosen == "St.Vitus (Dance)") {
      sendDanceDetailsToDatabase();
    } else if (groupChoosen == "St.Gabriel (Instruments)") {
      sendInstrumentsDetailsToDatabase();
    } else if (groupChoosen == "St.Cecilia (Choir)") {
      sendChoirDetailsToDatabase();
    } else if (groupChoosen == "St.John (Alter sevants)") {
      sendAlterServantsDetailsToDatabase();
    }
  }

  void sendAnnouncements() {
    if (groupChoosen == "St.Paul (Gents)") {
      sendGentsAnnoncementsToDatabase();
    } else if (groupChoosen == "St.Catherine (Ladies)") {
      sendLadiesAnnoncementsToDatabase();
    } else if (groupChoosen == "St.Vitus (Dance)") {
      sendDanceAnnoncementsToDatabase();
    } else if (groupChoosen == "St.Gabriel (Instruments)") {
      sendInstrumentsAnnoncementsToDatabase();
    } else if (groupChoosen == "St.Cecilia (Choir)") {
      sendChoirAnnoncementsToDatabase();
    } else if (groupChoosen == "St.John (Alter sevants)") {
      sendAlterServantsAnnoncementsToDatabase();
    }
  }

  /*
   these functions send the announcements to the database
   */
  void sendChoirAnnoncementsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('Other Groups')
          .child("Choir")
          .child("Announcements")
          .push()
          .set({'Announcement': announcement});
    });
  }

  void sendInstrumentsAnnoncementsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('Other Groups')
          .child("Instruments")
          .child("Announcements")
          .push()
          .set({'Announcement': announcement});
    });
  }

  void sendAlterServantsAnnoncementsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('Other Groups')
          .child("Alter Servants")
          .child("Announcements")
          .push()
          .set({'Announcement': announcement});
    });
  }

  void sendDanceAnnoncementsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('Other Groups')
          .child("Dance")
          .child("Announcements")
          .push()
          .set({'Announcement': announcement});
    });
  }

  void sendLadiesAnnoncementsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('Other Groups')
          .child("Ladies")
          .child("Announcements")
          .push()
          .set({'Announcement': announcement});
    });
  }

  void sendGentsAnnoncementsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('Other Groups')
          .child("Gents")
          .child("Announcements")
          .push()
          .set({'Announcement': announcement});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 5,
                    spreadRadius: 1)
              ],
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child:  Text("Venue",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: mainColor1)),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: TextField(
                              onChanged: ((value) {
                                groupVenue = value;
                              }),
                              decoration: const InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Room 7",
                                hintStyle: TextStyle(fontSize: 11),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 0.5,
                            indent: MediaQuery.of(context).size.width * 0.02,
                            endIndent: MediaQuery.of(context).size.width * 0.02,
                            color: mainColor1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child:  Text("Time",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: mainColor1)),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: TextField(
                              onChanged: ((value) {
                                groupTime = value;
                              }),
                              decoration: const InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                hintText: "3:00 pm",
                                hintStyle: TextStyle(fontSize: 11),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 0.5,
                            indent: MediaQuery.of(context).size.width * 0.02,
                            endIndent: MediaQuery.of(context).size.width * 0.02,
                            color: mainColor1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child:  Text("Day",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: mainColor1)),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: TextField(
                              onChanged: ((value) {
                                groupDay = value;
                              }),
                              decoration: const InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.transparent,
                                hintText: "Friday",
                                hintStyle: TextStyle(fontSize: 11),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 0.5,
                            indent: MediaQuery.of(context).size.width * 0.02,
                            endIndent: MediaQuery.of(context).size.width * 0.02,
                            color: mainColor1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child:  Text(
                          "Announcements",
                          style: TextStyle(
                              fontSize: 16,
                              color: mainColor1),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: TextField(
                          onChanged: ((value) {
                            announcement = value;
                          }),
                          decoration:  InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            prefixIcon: Icon(
                              Icons.announcement,
                              color: mainColor1,
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 0.5,
                        indent: MediaQuery.of(context).size.width * 0.04,
                        endIndent: MediaQuery.of(context).size.width * 0.04,
                        color: mainColor1,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: DropdownButtonFormField(
                    value: initialValue,
                    dropdownColor: Colors.white,
                    iconEnabledColor: mainColor1,
                    iconDisabledColor: mainColor1,
                    items: dropdownItems.map((String items) {
                      return DropdownMenuItem(value: items, child: Text(items));
                    }).toList(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          color: mainColor1,
                        ),
                      ),
                      focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          color: mainColor1,
                        ),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                    ),
                    style:  TextStyle(
                        color: mainColor1, fontSize: 13),
                    onChanged: (String? value) {
                      setState(() {
                        groupChoosen = value!;
                      });
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: ElevatedButton(
                        onPressed: () {
                          modifyDetails();
                          sendAnnouncements();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade300,
                            onPrimary: Colors.black,
                            elevation: 10,
                            shadowColor: Colors.grey,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        child: const Text("Update"),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade300,
                            onPrimary: Colors.black,
                            elevation: 10,
                            shadowColor: Colors.grey,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        child: const Text("Reset"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
