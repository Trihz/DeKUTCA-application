import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:firebase_database/firebase_database.dart';

class Welfare extends StatefulWidget {
  const Welfare({Key? key}) : super(key: key);

  @override
  State<Welfare> createState() => _WelfareState();
}

class _WelfareState extends State<Welfare> {
  final welfareCommitteeNumber = "+254775594067";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.33,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 2),
                            blurRadius: 5,
                            spreadRadius: 1)
                      ],
                      color: const Color.fromARGB(255, 45, 50, 89),
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.elliptical(
                              MediaQuery.of(context).size.width * 1.4, 250))),
                  child: Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.5),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Center(
                          child: Text(
                            'Welfare committee',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 45, 50, 89),
                      radius: 50,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 49,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: const Icon(
                            Icons.volunteer_activism,
                            size: 60,
                            color: Color.fromARGB(255, 45, 50, 89),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.03,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              )),
          Container(
            height: MediaQuery.of(context).size.height * 0.63,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 1,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Center(
                        child: Text(
                          '"If you light a lamp for someone else it will also brighten your path"',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.16,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(1, 1),
                                    blurRadius: 2,
                                    spreadRadius: 1)
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.23,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Image.asset("assets/members.png"),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.52,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Center(
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.06,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                                    0.06,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.2,
                                                decoration: const BoxDecoration(
                                                    color: Colors.transparent),
                                                child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Co-ordinator:",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w200,
                                                        color: Color.fromARGB(
                                                            255, 45, 50, 89)),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.06,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.31,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors
                                                              .transparent),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: const [
                                                      Text(
                                                        "Stephen Musangi",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    45,
                                                                    50,
                                                                    89)),
                                                      ),
                                                      Text(
                                                        "(0792001961)",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    45,
                                                                    50,
                                                                    89)),
                                                      )
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Center(
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.06,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                                    0.06,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.2,
                                                decoration: const BoxDecoration(
                                                    color: Colors.transparent),
                                                child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Secretary:",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w200,
                                                        color: Color.fromARGB(
                                                            255, 45, 50, 89)),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.06,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.31,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors
                                                              .transparent),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: const [
                                                      Text(
                                                        "Nic Musangi",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    45,
                                                                    50,
                                                                    89)),
                                                      ),
                                                      Text(
                                                        "(0792001961)",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    45,
                                                                    50,
                                                                    89)),
                                                      )
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.16,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(1, 1),
                                    blurRadius: 1,
                                    spreadRadius: 1)
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.16,
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Image.asset("assets/roles.png"),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.16,
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      'Roles:',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromARGB(255, 45, 50, 89),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              '1. Planning of charity activites',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 45, 50, 89),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              '2. Helping the nneedy in the\nchurch',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 45, 50, 89),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.01,
                      width: MediaQuery.of(context).size.width * 0.9),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Help and Inquiries',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.width * 0.3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.transparent,
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                  spreadRadius: 1)
                            ],
                            color: Colors.pink,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                onPressed: () async {
                                  await FlutterPhoneDirectCaller.callNumber(
                                      welfareCommitteeNumber);
                                },
                                icon: const Icon(Icons.phone),
                                color: Colors.white),
                            const Text(
                              'Phone Call',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.transparent,
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                  spreadRadius: 1)
                            ],
                            color: Colors.pink,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                onPressed: () async {
                                  final url = 'sms:$welfareCommitteeNumber';
                                  await launchUrlString(url);
                                },
                                color: Colors.white,
                                icon: const Icon(Icons.message)),
                            const Text(
                              'Message',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.transparent,
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                  spreadRadius: 1)
                            ],
                            color: Colors.pink,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                onPressed: () async {
                                  const toEmail =
                                      'stephenmusangi8264@gmail.com';
                                  const subject = 'Welfare Comittee Inquiries';
                                  final url =
                                      'mailto:$toEmail?subject=${Uri.encodeFull(subject)}';
                                  if (await canLaunchUrlString(url)) {
                                    await launchUrlString(url);
                                  }
                                },
                                color: Colors.white,
                                icon: const Icon(Icons.email_rounded)),
                            const Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.transparent,
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                  spreadRadius: 1)
                            ],
                            color: Colors.pink,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                onPressed: () {
                                  DatabaseReference reference =
                                      FirebaseDatabase.instance.ref();
                                  setState(() {
                                    reference
                                        .child('Value1')
                                        .set({'Dust': "20"});
                                  });
                                },
                                color: Colors.white,
                                icon: const Icon(Icons.volunteer_activism)),
                            const Text(
                              'Contribute',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
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
          ),
        ],
      ),
    ));
  }
}
