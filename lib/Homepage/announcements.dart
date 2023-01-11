import 'package:dekutca/DataClasses/weekly_activities_data_class.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class Announcements extends StatefulWidget {
  const Announcements({super.key});

  @override
  State<Announcements> createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 34, 51, 105);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  // variable to store the announcement
  String announcement = '';

  // variables to store the weekly activities details
  String mass = '';
  String shrineWashing = '';
  String waweru = '';
  String koinonia = '';

  // function t o read the weekly activities details from the database
  void readWeeklyActiviesDetails() {
    Query reference = FirebaseDatabase.instance.ref().child("Weekly Activites");
    reference.once().then((event) {
      WeeklyActivitiesDataClass weeklyActivitiesDataClass =
          WeeklyActivitiesDataClass(
              event.snapshot.child("Mass").value.toString(),
              event.snapshot.child("Shrine Washing").value.toString(),
              event.snapshot.child("Waweru").value.toString(),
              event.snapshot.child("Koinonia").value.toString());
      setState(() {
        mass = weeklyActivitiesDataClass.getMass;
        shrineWashing = weeklyActivitiesDataClass.getShrineWashing;
        waweru = weeklyActivitiesDataClass.getWaweru;
        koinonia = weeklyActivitiesDataClass.getKoinonia;
      });
    });
  }

  // function to read the announcements from database
  void readAnnouncements() {
    DatabaseReference reference = FirebaseDatabase.instance.ref();
    reference.onValue.listen((DatabaseEvent event) {
      String announcementDatabase = event.snapshot
          .child('General Announcements')
          .child("Announcement")
          .value
          .toString();
      setState(() {
        announcement = announcementDatabase;
        print(announcement);
      });
    });
  }

  // initial function
  @override
  void initState() {
    readWeeklyActiviesDetails();
    readAnnouncements();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            const Color.fromARGB(255, 255, 255, 255),
            mainColor1,
          ],
        )),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: mainColor1,
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(30))),
              child: Column(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration:
                          const BoxDecoration(color: Colors.transparent)),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Weekly Duties',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.transparent,
                                        offset: Offset(2, 2),
                                        blurRadius: 5,
                                        spreadRadius: 1)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Mass',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: mainColor1,
                                    ),
                                  ),
                                  Text(
                                    mass,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: mainColor1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.transparent,
                                        offset: Offset(2, 2),
                                        blurRadius: 5,
                                        spreadRadius: 1)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Shrine Washing',
                                    style: TextStyle(
                                        fontSize: 12, color: mainColor1),
                                  ),
                                  Text(
                                    shrineWashing,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: mainColor1,
                                    ),
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
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.transparent,
                                        offset: Offset(2, 2),
                                        blurRadius: 5,
                                        spreadRadius: 1)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Waweru',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: mainColor1,
                                    ),
                                  ),
                                  Text(
                                    waweru,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: mainColor1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.transparent,
                                        offset: Offset(2, 2),
                                        blurRadius: 5,
                                        spreadRadius: 1)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Koinonia',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: mainColor1,
                                    ),
                                  ),
                                  Text(
                                    koinonia,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: mainColor1,
                                    ),
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
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: const BoxDecoration(color: Colors.transparent),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                        color: mainColor1,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'Office days:',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Each day\n(Quo Vadis)',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Announcements',
                        style: TextStyle(
                            fontSize: 16,
                            color: mainColor1,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: FirebaseAnimatedList(
                        reverse: true,
                        query: FirebaseDatabase.instance
                            .ref()
                            .child('General Announcements'),
                        itemBuilder: (BuildContext context,
                            DataSnapshot snapshot,
                            Animation<double> animation,
                            int index) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.8,
                            margin: const EdgeInsets.only(top: 5),
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      snapshot
                                          .child('Announcement')
                                          .value
                                          .toString(),
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 13,
                                          color: mainColor1),
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 10,
                                  thickness: 0.2,
                                  color: mainColor1,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
