import 'package:flutter/material.dart';

class CardinalOtunga extends StatefulWidget {
  const CardinalOtunga({Key? key}) : super(key: key);

  @override
  State<CardinalOtunga> createState() => _CardinalOtungaState();
}

class _CardinalOtungaState extends State<CardinalOtunga> {
  String cardinalOtungaPrayer =
      "We believe in one God,the Father, the Almighty,Maker of all that is, seen and unseen.We believe in one Lord, Jesus Christ,the only Son of God,eternally begotten of the Father,God frm God,Light from Light,true God from true God,begotten, not made, consubstantialof one Being with the Father.Through him all things were made.For us men and for our salvationhe came down from heaven,and by the Holy Spirit was incarnate of the Virgin Mary,and became man.For our sake he was crucified under Pontius Pilathe suffered death and was buriOn the third day he rose againin accordance with the Scriptures;he ascended into heavenand is seated at the right hand of the Father.He will come again in glory to judge the living and the dead,and his kingdom will have no end.We believe in the Holy Spirit, the Lord, the giver of lifewho proceeds from the Father and the Son.With the Father and the Son he is worshipped and glorified.He has spoken through the Prophets.We believe in one holy catholic and; apostolic Church.We acknowledge one baptism for the forgiveness of sins.We look for the resurrection of the dead,nd the life of the world to come. Amen.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 1,
            child: const Center(
              child: Text(
                "Cardinal Otunga Prayer",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green),
              ),
            ),
          ),
          Divider(
            height: 10,
            thickness: 0.5,
            indent: MediaQuery.of(context).size.width * 0.03,
            endIndent: MediaQuery.of(context).size.width * 0.03,
            color: Colors.green,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.85,
            width: MediaQuery.of(context).size.width * 1,
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      cardinalOtungaPrayer,
                      style: const TextStyle(
                          fontSize: 15, height: 2, color: Colors.black),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const Center(
                      child: Text(
                        "AMEN",
                        style: TextStyle(
                            fontSize: 15, height: 2, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
