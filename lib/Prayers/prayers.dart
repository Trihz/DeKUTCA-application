import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Readings extends StatefulWidget {
  const Readings({Key? key}) : super(key: key);

  @override
  State<Readings> createState() => _ReadingsState();
}

class _ReadingsState extends State<Readings> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 34, 51, 105);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  // prayers
  String prayer = '';
  String prayersTitle = '';

  String niceneCreedPrayer =
      "I believe in one God, the Father, the Almighty, Maker of heaven and earth, of all things visible and invisible. I believe in one Lord Jesus Christ, the only-begotten Son of God, born of the Father before all ages, God from God, Light from Light, true God from true God, begotten, not made, consubstantial with the Father. Through him all things were made. For us and for our salvation he came down from heaven:by the power of the Holy Spirit was incarnate of the Virgin Mary, and became man. For our sake he was crucified under Pontius Pilate; he suffered death and was buried, and rose again on the third day in accordance with the Scriptures. He ascended into heaven and is seated at the right hand of the Father. He will come again in glory to judge the living and dead, and his kingdom will have no end. I believe in the Holy Spirit, the Lord, the giver of life, who proceeds from the Father and the Son. With the Father and the Son he is adored and glorified. He has spoken through the Prophets. I believe in one, holy, catholic and apostolic Church. I confess one baptism for the forgiveness of sins, and I look forward to the resurrection of the dead, and the life of the world to come.";

  String blessedSisterIrenePrayer =
      "We believe in one God,the Father, the Almighty,Maker of all that is, seen and unseen.We believe in one Lord, Jesus Christ,the only Son of God,eternally begotten of the Father,God frm God,Light from Light,true God from true God,begotten, not made, consubstantialof one Being with the Father.Through him all things were made.For us men and for our salvationhe came down from heaven,and by the Holy Spirit was incarnate of the Virgin Mary,and became man.For our sake he was crucified under Pontius Pilathe suffered death and was buriOn the third day he rose againin accordance with the Scriptures;he ascended into heavenand is seated at the right hand of the Father.He will come again in glory to judge the living and the dead,and his kingdom will have no end.We believe in the Holy Spirit, the Lord, the giver of lifewho proceeds from the Father and the Son.With the Father and the Son he is worshipped and glorified.He has spoken through the Prophets.We believe in one holy catholic and; apostolic Church.We acknowledge one baptism for the forgiveness of sins.We look for the resurrection of the dead,nd the life of the world to come. Amen.";
  String cardinalOtungaPrayer =
      "We believe in one God,the Father, the Almighty,Maker of all that is, seen and unseen.We believe in one Lord, Jesus Christ,the only Son of God,eternally begotten of the Father,God frm God,Light from Light,true God from true God,begotten, not made, consubstantialof one Being with the Father.Through him all things were made.For us men and for our salvationhe came down from heaven,and by the Holy Spirit was incarnate of the Virgin Mary,and became man.For our sake he was crucified under Pontius Pilathe suffered death and was buriOn the third day he rose againin accordance with the Scriptures;he ascended into heavenand is seated at the right hand of the Father.He will come again in glory to judge the living and the dead,and his kingdom will have no end.We believe in the Holy Spirit, the Lord, the giver of lifewho proceeds from the Father and the Son.With the Father and the Son he is worshipped and glorified.He has spoken through the Prophets.We believe in one holy catholic and; apostolic Church.We acknowledge one baptism for the forgiveness of sins.We look for the resurrection of the dead,nd the life of the world to come. Amen.";
  String prayerForVocation = "";

  @override
  void initState() {
    setState(() {
      prayer = niceneCreedPrayer;
      prayersTitle = "Nicene Creed";
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          color: mainColor1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 1,
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              decoration: BoxDecoration(color: mainColor1),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Prayers",
                  style: GoogleFonts.ebGaramond(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.59,
                    width: MediaQuery.of(context).size.width * 1,
                    padding: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.56,
                          width: MediaQuery.of(context).size.width * 0.95,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(255, 240, 237, 240)),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  prayersTitle,
                                  style: GoogleFonts.ebGaramond(
                                      height: 2,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  prayer,
                                  style: GoogleFonts.ebGaramond(
                                    height: 2,
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
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width * 1,
                    padding: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  prayersTitle = 'Nicene Creed';
                                  prayer = niceneCreedPrayer;
                                });
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 5, bottom: 7),
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.26,
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(2, 2),
                                          blurRadius: 5,
                                          spreadRadius: 1)
                                    ],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                    color: mainColor2),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Nicene Creed",
                                      style: GoogleFonts.ebGaramond(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 13,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    prayersTitle = 'Prayer for vocation';
                                    prayer = prayerForVocation;
                                  });
                                },
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 7),
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.26,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(2, 2),
                                            blurRadius: 5,
                                            spreadRadius: 1)
                                      ],
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                      color: mainColor2),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Vocation\nprayer",
                                        style: GoogleFonts.ebGaramond(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    prayersTitle = 'Cardinal Otunga Prayer';
                                    prayer = cardinalOtungaPrayer;
                                  });
                                },
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 7),
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.26,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(2, 2),
                                            blurRadius: 5,
                                            spreadRadius: 1)
                                      ],
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                      color: mainColor2),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Cardinal Otunga",
                                        style: GoogleFonts.ebGaramond(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    prayersTitle =
                                        'Blessed Sister Irene Prayer';
                                    prayer = blessedSisterIrenePrayer;
                                  });
                                },
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 7),
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.26,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(2, 2),
                                            blurRadius: 5,
                                            spreadRadius: 1)
                                      ],
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                      color: mainColor2),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Blessed Sister\nIrene",
                                        style: GoogleFonts.ebGaramond(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
