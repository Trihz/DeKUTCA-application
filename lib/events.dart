import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
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
              height: MediaQuery.of(context).size.height * 0.22,
              child: Stack(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.2,
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
                                  MediaQuery.of(context).size.width * 2,
                                  200)))),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: const BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.transparent,
                                offset: Offset(2, 2),
                                blurRadius: 5,
                                spreadRadius: 1)
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "Events",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
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
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: const EdgeInsets.only(
                            bottom: 10, left: 5, right: 5),
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.transparent,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                  spreadRadius: 1)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.transparent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent),
                                    child: const Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          "Charity Activity",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 45, 50, 89)),
                                        ))),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              "Date:",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(
                                                      255, 45, 50, 89)),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              "Time:",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(
                                                      255, 45, 50, 89)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              "22/02/2022",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromARGB(
                                                      255, 45, 50, 89)),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              "9: 00 pm",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromARGB(
                                                      255, 45, 50, 89)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: const Center(
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "Baraka Children's\nhome",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromARGB(
                                                255, 45, 50, 89)),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              height: 1,
                              thickness: 1.2,
                              color: const Color.fromARGB(255, 45, 50, 89),
                              endIndent:
                                  MediaQuery.of(context).size.height * 0.01,
                              indent: MediaQuery.of(context).size.height * 0.01,
                            )
                          ],
                        ));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
