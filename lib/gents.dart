import 'package:flutter/material.dart';

class Gents extends StatefulWidget {
  const Gents({super.key});

  @override
  State<Gents> createState() => _GentsState();
}

class _GentsState extends State<Gents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 32, 136, 36)),
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          margin: EdgeInsets.only(left: 10),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(220))),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: const Center(
                  child: Text(
                    'Gents',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 32, 136, 36),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: const Center(
                  child: Text(
                    '"How can a young man keep his way pure?\nBy guarding it according to your word\n(Psalm 119:9)"',
                    style: TextStyle(
                      fontSize: 11,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 32, 136, 36),
                    ),
                  ),
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: const BoxDecoration(color: Colors.transparent)),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Meetings and Members',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(color: Colors.transparent),
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
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(255, 207, 247, 201)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                width: MediaQuery.of(context).size.width * 0.29,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Co-ordinator:",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color:
                                            Color.fromARGB(255, 32, 136, 36)),
                                  ),
                                ),
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Stephen Musangi",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color.fromARGB(
                                                255, 32, 136, 36)),
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
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(255, 207, 247, 201)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                width: MediaQuery.of(context).size.width * 0.29,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Secretary:",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color:
                                            Color.fromARGB(255, 32, 136, 36)),
                                  ),
                                ),
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Nic Musangi",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color.fromARGB(
                                                255, 32, 136, 36)),
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
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(255, 207, 247, 201)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                width: MediaQuery.of(context).size.width * 0.29,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Tresurer:",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color:
                                            Color.fromARGB(255, 32, 136, 36)),
                                  ),
                                ),
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Winnie Musangi",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color.fromARGB(
                                                255, 32, 136, 36)),
                                      )))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.02,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Announcements',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Column(
                    children: [
                      const Divider(
                        height: 5,
                        thickness: 0.15,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Announcements 1',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color.fromARGB(255, 32, 136, 36),
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 5,
                        thickness: 0.15,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black,
                      ),
                      const Divider(
                        height: 5,
                        thickness: 0.15,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Announcements 2',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color.fromARGB(255, 32, 136, 36),
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 5,
                        thickness: 0.15,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black,
                      ),
                      const Divider(
                        height: 5,
                        thickness: 0.15,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Announcements 3',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color.fromARGB(255, 32, 136, 36),
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 5,
                        thickness: 0.15,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black,
                      ),
                      const Divider(
                        height: 5,
                        thickness: 0.15,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Announcements 4',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color.fromARGB(255, 32, 136, 36),
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 5,
                        thickness: 0.15,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
