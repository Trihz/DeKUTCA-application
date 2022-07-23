import 'package:flutter/material.dart';

class HailMary extends StatefulWidget {
  const HailMary({Key? key}) : super(key: key);

  @override
  State<HailMary> createState() => _HailMaryState();
}

class _HailMaryState extends State<HailMary> {
  String hailMaryPrayer =
      'Hail Mary, Full of Grace, The Lord is with thee. Blessed art thou among women, and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners now, and at the hour of our death.';
  String ourFatherPrayer =
      "Our Father, who art in heaven, hallowed be thy name. Thy kingdom come, thy will be done, on earth, as it is in heaven. Give us this day our daily bread and forgive us our trespasses as we forgive those who trespass against us; and lead us not into temptation, but deliver us from evil.";
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
                "Hail Mary | Our Father",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green),
              ),
            ),
          ),
          Divider(
            height: 15,
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
                    const Text(
                      "Hail Mary",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.green),
                    ),
                    Text(
                      hailMaryPrayer,
                      style: const TextStyle(
                          fontSize: 15, height: 2, color: Colors.black),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    const Text(
                      "Our Father",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.green),
                    ),
                    Text(
                      ourFatherPrayer,
                      style: const TextStyle(
                          fontSize: 15, height: 2, color: Colors.black),
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
