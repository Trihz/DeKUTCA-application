import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class SCC_Updates extends StatefulWidget {
  const SCC_Updates({super.key});

  @override
  State<SCC_Updates> createState() => _SCC_UpdatesState();
}

class _SCC_UpdatesState extends State<SCC_Updates> {
   // main color 1
  Color mainColor1 = const Color.fromARGB(255, 45, 77, 106);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);
  
  // variables for storing the updates to be taken to the database
  String sccVenue = '';
  String sccTime = '';
  String sccDay = '';
  String sccCharityVenue = '';
  String sccCharityDateTime = '';
  String sccHikeVenue = '';
  String sccHikeTime = '';
  String sccPartyVenue = '';
  String sccPartyDateTime = '';

  //variabe to store which scc group has been choosen
  String sccChoosen = '';

  // this variable sets the initial value for the dropdown
  String initialValue = "St.Joseph";

  // this variable stores the dropdown items
  var dropdownItems = [
    "St.Joseph",
    "St.Angelus",
    "St.Peter",
  ];

  /*
    functions to modify the other groups details
  */
  void sendStJosephDetailsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('SCC')
          .child("St Joseph")
          .child("Meeting")
          .set({'Venue': sccVenue, 'Time': sccTime, 'Day': sccDay});
    });
  }

  void sendStAngelusDetailsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('SCC')
          .child("St Angelus")
          .child("Meeting")
          .set({'Venue': sccVenue, 'Time': sccTime, 'Day': sccDay});
    });
  }

  void sendStPeterDetailsToDatabase() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference
          .child('SCC')
          .child("St Peter")
          .child("Meeting")
          .set({'Venue': sccVenue, 'Time': sccTime, 'Day': sccDay});
    });
  }

  void modifyMeetingDetails() {
    if (sccChoosen == "St.Joseph") {
      sendStJosephDetailsToDatabase();
    } else if (sccChoosen == "St.Angelus") {
      sendStAngelusDetailsToDatabase();
    } else if (sccChoosen == "St.Peter") {
      sendStPeterDetailsToDatabase();
    }
  }

  /*
   functions to modify the the charity activity,hike and party for the SCCs
  */
  void sendActivitiesDetailsStJoseph() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('SCC').child("St Joseph").child("Activities").set({
        'Charity Venue': sccCharityVenue,
        'Charity Date': sccCharityDateTime,
        'Hike Venue': sccHikeVenue,
        'Hike Time': sccHikeTime,
        'Party Venue': sccPartyVenue,
        'Party Time': sccPartyDateTime
      });
    });
  }

  void sendActivitiesDetailsStAngelus() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('SCC').child("St Angelus").child("Activities").set({
        'Charity Venue': sccCharityVenue,
        'Charity Date': sccCharityDateTime,
        'Hike Venue': sccHikeVenue,
        'Hike Time': sccHikeTime,
        'Party Venue': sccPartyVenue,
        'Party Time': sccPartyDateTime
      });
    });
  }

  void sendActivitiesDetailsStPeter() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('SCC').child("St Peter").child("Activities").set({
        'Charity Venue': sccCharityVenue,
        'Charity Date': sccCharityDateTime,
        'Hike Venue': sccHikeVenue,
        'Hike Time': sccHikeTime,
        'Party Venue': sccPartyVenue,
        'Party Time': sccPartyDateTime
      });
    });
  }

  void modifyActivitiesDetails() {
    if (sccChoosen == "St.Joseph") {
      sendActivitiesDetailsStJoseph();
    } else if (sccChoosen == "St.Angelus") {
      sendActivitiesDetailsStAngelus();
    } else if (sccChoosen == "St.Peter") {
      sendActivitiesDetailsStPeter();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.56,
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
                                sccVenue = value;
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
                                sccTime = value;
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
                                sccDay = value;
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
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.8,
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
                          "Activities",
                          style: TextStyle(
                              fontSize: 16,
                              color: mainColor1),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: TextField(
                                    onChanged: ((value) {
                                      sccCharityVenue = value;
                                    }),
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: "Charity activity venue",
                                      hintStyle: TextStyle(fontSize: 10),
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
                                  indent:
                                      MediaQuery.of(context).size.width * 0.02,
                                  endIndent:
                                      MediaQuery.of(context).size.width * 0.02,
                                  color: mainColor1,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: TextField(
                                    onChanged: ((value) {
                                      sccCharityDateTime = value;
                                    }),
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 0),
                                      hintText: "Date/Time",
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
                                  indent:
                                      MediaQuery.of(context).size.width * 0.02,
                                  endIndent:
                                      MediaQuery.of(context).size.width * 0.02,
                                  color: mainColor1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: TextField(
                                    onChanged: ((value) {
                                      sccHikeVenue = value;
                                    }),
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: "Hike venue",
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
                                  indent:
                                      MediaQuery.of(context).size.width * 0.02,
                                  endIndent:
                                      MediaQuery.of(context).size.width * 0.02,
                                  color: mainColor1,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: TextField(
                                    onChanged: ((value) {
                                      sccHikeTime = value;
                                    }),
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 0),
                                      hintText: "Date/Time",
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
                                  indent:
                                      MediaQuery.of(context).size.width * 0.02,
                                  endIndent:
                                      MediaQuery.of(context).size.width * 0.02,
                                  color: mainColor1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: TextField(
                                    onChanged: ((value) {
                                      sccPartyVenue = value;
                                    }),
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: "Party venue",
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
                                  indent:
                                      MediaQuery.of(context).size.width * 0.02,
                                  endIndent:
                                      MediaQuery.of(context).size.width * 0.02,
                                  color: mainColor1,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: TextField(
                                    onChanged: ((value) {
                                      sccPartyDateTime = value;
                                    }),
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 0),
                                      hintText: "Date/Time",
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
                                  indent:
                                      MediaQuery.of(context).size.width * 0.02,
                                  endIndent:
                                      MediaQuery.of(context).size.width * 0.02,
                                  color: mainColor1,
                                ),
                              ],
                            ),
                          ),
                        ],
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
                      sccChoosen = value!;
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
                          modifyMeetingDetails();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade300,
                            onPrimary: Colors.black,
                            elevation: 10,
                            shadowColor: Colors.grey,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        child: const Text("Meeting"),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: ElevatedButton(
                        onPressed: () {
                          modifyActivitiesDetails();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade300,
                            onPrimary: Colors.black,
                            elevation: 10,
                            shadowColor: Colors.grey,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        child: const Text("Activities"),
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
