import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Announcements_Updates extends StatefulWidget {
  const Announcements_Updates({super.key});

  @override
  State<Announcements_Updates> createState() => _Announcements_UpdatesState();
}

class _Announcements_UpdatesState extends State<Announcements_Updates> {
   // main color 1
  Color mainColor1 = const Color.fromARGB(255, 45, 77, 106);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);


  // variables to store the announcements
  String announcement = "";

  // function to send the announcements to the database
  void sendTheAnnoncementsToDatabase() {
    DatabaseReference reference =
        FirebaseDatabase.instance.ref().child('General Announcements').push();
    setState(() {
      reference.set({'Announcement': announcement});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
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
          child: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child:  Text(
                    "Announcements",
                    style: TextStyle(
                        fontSize: 15, color: mainColor1),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: TextField(
                    onChanged: ((value) {
                      announcement = value;
                    }),
                    decoration:  InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                  color: const Color.fromARGB(255, 45, 50, 89),
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
                          sendTheAnnoncementsToDatabase();
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
        ),
      ],
    );
  }
}
