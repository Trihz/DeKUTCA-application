import 'package:flutter/material.dart';

class AdminControlPage extends StatefulWidget {
  const AdminControlPage({super.key});

  @override
  State<AdminControlPage> createState() => _AdminControlPageState();
}

class _AdminControlPageState extends State<AdminControlPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: const Center(
                  child: Text(
                    '',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 45, 50, 89),
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 1,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Mass',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ],
                  color: Color.fromARGB(255, 45, 50, 89),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Venue',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 45, 50, 89),
                                  ),
                                ),
                                Text(
                                  'Quo Vadis Hub',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 45, 50, 89),
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Time',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 45, 50, 89),
                                  ),
                                ),
                                Text(
                                  '9:00 pm',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 45, 50, 89),
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.change_circle,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 1,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Weekly Duties',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ],
                  color: Color.fromARGB(255, 45, 50, 89),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Mass',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 45, 50, 89),
                                  ),
                                ),
                                Text(
                                  'St.Joseph',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 45, 50, 89),
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Shrine Washing',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 45, 50, 89),
                                  ),
                                ),
                                Text(
                                  'St.Joseph',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 45, 50, 89),
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Waweru',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 45, 50, 89),
                                  ),
                                ),
                                Text(
                                  'St.Joseph',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 45, 50, 89),
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Koinonea',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 45, 50, 89),
                                  ),
                                ),
                                Text(
                                  'St.Joseph',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 45, 50, 89),
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.change_circle,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 1,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Announcements',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ],
                  color: Color.fromARGB(255, 45, 50, 89),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          labelText: "Announcement 1",
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 45, 50, 89),fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          labelText: "Announcement 2",
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 45, 50, 89),
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          labelText: "Announcement 3",
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 45, 50, 89),
                              fontSize: 12),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
