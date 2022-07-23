import 'package:flutter/material.dart';

class ApostlesCreed extends StatefulWidget {
  const ApostlesCreed({Key? key}) : super(key: key);

  @override
  State<ApostlesCreed> createState() => _ApostlesCreedState();
}

class _ApostlesCreedState extends State<ApostlesCreed> {
  String apostlesCreed =
      'I believe in God, the Father Almighty, Creator of Heaven and earth; and in Jesus Christ, His only Son Our Lord, Who was conceived by the Holy Spirit, born of the Virgin Mary, suffered under Pontius Pilate, was crucified, died, and was buried. He descended into Hell; the third day He rose again from the dead; He ascended into Heaven, and sitteth at the right hand of God, the Father almighty; from thence He shall come to judge the living and the dead. I believe in the Holy Spirit, the holy Catholic Church, the communion of saints, the forgiveness of sins, the resurrection of the body and life everlasting.';
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
                "Apostle's Creed",
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
                      apostlesCreed,
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
