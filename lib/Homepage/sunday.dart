import 'package:dekutca/DataClasses/mass_data_class.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Sunday extends StatefulWidget {
  const Sunday({super.key});

  @override
  State<Sunday> createState() => _SundayState();
}

class _SundayState extends State<Sunday> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 34, 51, 105);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  // variables to store the weekly activities details
  String venue = '';
  String time = '';

  // function to read mass details from the database
  void readMassDetails() {
    Query reference = FirebaseDatabase.instance.ref().child("Mass");
    reference.once().then((event) {
      MassDataClass massDataClass = MassDataClass(
          event.snapshot.child("Venue").value.toString(),
          event.snapshot.child("Time").value.toString());
      setState(() {
        venue = massDataClass.getVenue;
        time = massDataClass.getTime;
      });
    });
  }

  // initial function
  @override
  void initState() {
    readMassDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.03,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: const BoxDecoration(color: Colors.transparent)),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.42,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          spreadRadius: 1)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                        top: const Radius.circular(50),
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.height * 1, 300))),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Image.asset("assets/holymass5.png"),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.35,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                  spreadRadius: 1)
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                             Text(
                              "Venue:",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: mainColor1),
                            ),
                            Text(
                              venue,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.35,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                  spreadRadius: 1)
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                             Text(
                              "Time:",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: mainColor1),
                            ),
                            Text(
                              time,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.black),
                            ),
                          ],
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
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: const BoxDecoration(color: Colors.transparent)),
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: const BoxDecoration(color: Colors.transparent),
          child:  Center(
            child: Text(
              '"Serve the LORD with gladness;\nCome before His presence with singing.\n(Psalm 100:2)"',
              style: TextStyle(
                fontSize: 13,
                fontStyle: FontStyle.italic,
                color: mainColor1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
