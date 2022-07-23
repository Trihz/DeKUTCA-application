import 'package:flutter/material.dart';

class Choir extends StatefulWidget {
  const Choir({super.key});

  @override
  State<Choir> createState() => _ChoirState();
}

class _ChoirState extends State<Choir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(color: Color.fromARGB(255, 45, 50, 89)),
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
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 45, 50, 89),
                    borderRadius: BorderRadius.only(
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
                      child: const Center(
                        child: Text(
                          'Choir',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: const Center(
                        child: Text(
                          '"Serve the LORD with gladness;\nCome before His presence with singing.\n(Psalm 100:2)"',
                          style: TextStyle(
                            fontSize: 11,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Meetings and Members',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.13,
                          width: MediaQuery.of(context).size.width * 0.4,
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
                              color: Colors.pink),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.13,
                          width: MediaQuery.of(context).size.width * 0.4,
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
                              color: Colors.pink),
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
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Leaders',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.16,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 45, 50, 89),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
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
                                            child: const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Co-ordinator:",
                                                style: TextStyle(
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
                                              child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Stephen Musangi",
                                                    style: TextStyle(
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
                                              child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "0792001961",
                                                    style: TextStyle(
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
                                            child: const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Vice-Coordinator:",
                                                style: TextStyle(
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
                                              child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Winnie Musangi",
                                                    style: TextStyle(
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
                                              child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "0792001961",
                                                    style: TextStyle(
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
                                            child: const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Secretary:",
                                                style: TextStyle(
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
                                              child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Nic Musangi",
                                                    style: TextStyle(
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
                                              child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "0792001961",
                                                    style: TextStyle(
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
                                            child: const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Treasurer:",
                                                style: TextStyle(
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
                                              child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Winnie Musangi",
                                                    style: TextStyle(
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
                                              child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "0792001961",
                                                    style: TextStyle(
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
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Announcements',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Divider(
                                    height: 5,
                                    thickness: 0.4,
                                    indent: 0,
                                    endIndent: 0,
                                    color: Color.fromARGB(255, 45, 50, 89),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Announcement 1',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromARGB(255, 45, 50, 89),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                        /*Column(
                          children: [
                            const Divider(
                              height: 5,
                              thickness: 0.4,
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Announcement 1',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(255, 45, 50, 89),
                                  ),
                                ),
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 0.4,
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 0.4,
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Announcement 2',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(255, 45, 50, 89),
                                  ),
                                ),
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 0.4,
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 0.4,
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Announcement 3',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(255, 45, 50, 89),
                                  ),
                                ),
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 0.4,
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 0.4,
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Announcement 4',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(255, 45, 50, 89),
                                  ),
                                ),
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 0.4,
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                          ],
                        )*/
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
