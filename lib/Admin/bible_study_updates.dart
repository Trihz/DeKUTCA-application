import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class BibleStudyUpdates extends StatefulWidget {
  const BibleStudyUpdates({super.key});

  @override
  State<BibleStudyUpdates> createState() => _BibleStudyUpdatesState();
}

class _BibleStudyUpdatesState extends State<BibleStudyUpdates> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 45, 77, 106);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  // variables for storing the updates to be taken to the database
  String bibleStudyGroupVenue = '';
  String bibleStudyGroupTime = '';
  String bibleStudyGroupDay = '';

  //variabe to store which bible sstudy group has been choosen
  String bibleStudyGroupChoosen = '';

  // this variable sets the initial value for the dropdown
  String initialValue = "St.Bernadette of Lourdes";

  // this variable stores the dropdown items
  var dropdownItems = [
    "St.Bernadette of Lourdes",
    "St.Thomas of Aquinas",
    "St.Lucy",
    "St.Philip Neri",
    "St.Marcellino",
    "Internal",
    "Chania",
    "St.Gregory",
    "Embassy",
    "Nyaribo"
  ];

  /*
    functions to modify the meeting details for the bible study groups
   */
  void stBernadetteofLourdesDetails() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('Bible Study').child("St Bernadette of Lourdes").set({
        'Venue': bibleStudyGroupVenue,
        "Time": bibleStudyGroupTime,
        "Day": bibleStudyGroupDay
      });
    });
  }

  void stLucy() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('Bible Study').child("St Lucy").set({
        'Venue': bibleStudyGroupVenue,
        "Time": bibleStudyGroupTime,
        "Day": bibleStudyGroupDay
      });
    });
  }

  void stThomasOfAquinas() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('Bible Study').child("St Thomas of Aquinas").set({
        'Venue': bibleStudyGroupVenue,
        "Time": bibleStudyGroupTime,
        "Day": bibleStudyGroupDay
      });
    });
  }

  void stPhilipNeri() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('Bible Study').child("St Philip Neri").set({
        'Venue': bibleStudyGroupVenue,
        "Time": bibleStudyGroupTime,
        "Day": bibleStudyGroupDay
      });
    });
  }

  void stMarcellino() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('Bible Study').child("St Marcellino").set({
        'Venue': bibleStudyGroupVenue,
        "Time": bibleStudyGroupTime,
        "Day": bibleStudyGroupDay
      });
    });
  }

  void internalHostels() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('Bible Study').child("Internal").set({
        'Venue': bibleStudyGroupVenue,
        "Time": bibleStudyGroupTime,
        "Day": bibleStudyGroupDay
      });
    });
  }

  void chania() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('Bible Study').child("Chania").set({
        'Venue': bibleStudyGroupVenue,
        "Time": bibleStudyGroupTime,
        "Day": bibleStudyGroupDay
      });
    });
  }

  void stGregory() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('Bible Study').child("St Gregory").set({
        'Venue': bibleStudyGroupVenue,
        "Time": bibleStudyGroupTime,
        "Day": bibleStudyGroupDay
      });
    });
  }

  void embassy() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('Bible Study').child("Embassy").set({
        'Venue': bibleStudyGroupVenue,
        "Time": bibleStudyGroupTime,
        "Day": bibleStudyGroupDay
      });
    });
  }

  void nyaribo() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    setState(() {
      reference.child('Bible Study').child("Nyaribo").set({
        'Venue': bibleStudyGroupVenue,
        "Time": bibleStudyGroupTime,
        "Day": bibleStudyGroupDay
      });
    });
  }

  void modifyBibleStudyDetails() {
    if (bibleStudyGroupChoosen == "St.Bernadette of Lourdes") {
      stBernadetteofLourdesDetails();
    } else if (bibleStudyGroupChoosen == "St.Lucy") {
      stLucy();
    } else if (bibleStudyGroupChoosen == "St.Thomas of Aquinas") {
      stThomasOfAquinas();
    } else if (bibleStudyGroupChoosen == "St.Philip Neri") {
      stPhilipNeri();
    } else if (bibleStudyGroupChoosen == "St.Marcellino") {
      stMarcellino();
    } else if (bibleStudyGroupChoosen == "Internal") {
      internalHostels();
    } else if (bibleStudyGroupChoosen == "Chania") {
      chania();
    } else if (bibleStudyGroupChoosen == "St.Gregory") {
      stGregory();
    } else if (bibleStudyGroupChoosen == "Embassy") {
      embassy();
    } else if (bibleStudyGroupChoosen == "Nyaribo") {
      nyaribo();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.85,
            margin: const EdgeInsets.only(right: 10),
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
                            child: Text("Venue",
                                style:
                                    TextStyle(fontSize: 16, color: mainColor1)),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: TextField(
                              onChanged: ((value) {
                                bibleStudyGroupVenue = value;
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
                            child: Text("Time",
                                style:
                                    TextStyle(fontSize: 16, color: mainColor1)),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: TextField(
                              onChanged: ((value) {
                                bibleStudyGroupTime = value;
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
                            child: Text("Day",
                                style:
                                    TextStyle(fontSize: 16, color: mainColor1)),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: TextField(
                              onChanged: ((value) {
                                bibleStudyGroupDay = value;
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
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: DropdownButtonFormField(
                    value: initialValue,
                    dropdownColor: Colors.white,
                    iconEnabledColor: const Color.fromRGBO(24, 25, 84, 1),
                    iconDisabledColor: const Color.fromRGBO(24, 25, 84, 1),
                    items: dropdownItems.map((String items) {
                      return DropdownMenuItem(value: items, child: Text(items));
                    }).toList(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          color: mainColor1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          color: mainColor1,
                        ),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                    ),
                    style: TextStyle(color: mainColor1, fontSize: 13),
                    onChanged: (String? value) {
                      bibleStudyGroupChoosen = value!;
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
                          modifyBibleStudyDetails();
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
