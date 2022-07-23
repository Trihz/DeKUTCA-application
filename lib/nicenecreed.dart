import 'package:flutter/material.dart';

class ApostleCreed extends StatefulWidget {
  const ApostleCreed({Key? key}) : super(key: key);

  @override
  State<ApostleCreed> createState() => _ApostleCreedState();
}

class _ApostleCreedState extends State<ApostleCreed> {
  String apostleCreedPrayer =
      "I believe in one God, the Father, the Almighty, Maker of heaven and earth, of all things visible and invisible. I believe in one Lord Jesus Christ, the only-begotten Son of God, born of the Father before all ages, God from God, Light from Light, true God from true God, begotten, not made, consubstantial with the Father. Through him all things were made. For us and for our salvation he came down from heaven:by the power of the Holy Spirit was incarnate of the Virgin Mary, and became man. For our sake he was crucified under Pontius Pilate; he suffered death and was buried, and rose again on the third day in accordance with the Scriptures. He ascended into heaven and is seated at the right hand of the Father. He will come again in glory to judge the living and dead, and his kingdom will have no end. I believe in the Holy Spirit, the Lord, the giver of life, who proceeds from the Father and the Son. With the Father and the Son he is adored and glorified. He has spoken through the Prophets. I believe in one, holy, catholic and apostolic Church. I confess one baptism for the forgiveness of sins, and I look forward to the resurrection of the dead, and the life of the world to come.";
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
                "The Nicene Creed",
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
                      apostleCreedPrayer,
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
