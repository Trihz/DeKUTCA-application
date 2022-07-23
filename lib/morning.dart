import 'package:flutter/material.dart';

class Morning extends StatefulWidget {
  const Morning({Key? key}) : super(key: key);

  @override
  State<Morning> createState() => _MorningState();
}

class _MorningState extends State<Morning> {
  String nightPrayer =
      "My precious Lord, As this day comes to a close, I take this moment to turn to You. Help me, in this moment of quiet, to examine my day. (Do a brief examination of conscience or review the examination below) Lord, I thank You for helping me to see my sin. Please give to me the grace of humility So that I can admit all my sin without reserve. I pray that every sin will be forgiven, And I open myself to Your grace So that Your merciful Heart will create me anew. I also call to mind the way in which You were present to me this day. (Take a moment to ponder the graces God blessed you with this day) Lord, I thank You for the blessings of this day. Please help me to see these blessings as Your divine presence in my life. May I turn from sin and turn to You. Your presence in my life brings great joy; My sin leads to sorrow and despair. I choose You as my Lord. I choose You as my guide And pray for Your abundant blessings tomorrow. May this night be restful in You. May it be a night of renewal. Speak to me, Lord, as I sleep. Guard me and protect me the whole night through. My guardian angel, Saint Joseph, my Blessed Mother, Intercede for me now and always. ";
  String morningPrayer =
      "Dear Lord, I do not know who or what will cross my path on this day. But I know that You are my rock and my fortress. As always You are my Shield and my Strong Tower. This is my Morning Prayer, please help me to attach myself to You today. Also, teach me how to stand strong in You and choose only Your way on this day. Help me walk in Your truth and not my feelings. Lord help me embrace anything that comes my way as a chance to see You at work and as an opportunity to point others Your way. Father thank You for loving me and nothing can ever take that away from me! Even if I fail on this day and fall short, You whisper Your unconditional love deep into my soul and remind me that Your mercies are new every morning. That truly amazes me, Lord. Lord, I give you this day and all that it holds. May I walk in your goodness, knowing that your gentle hand will guide me, and keep me. Thank You for meeting with me today, and I pray that You reawake me tomorrow with Your exact sweet loving whisper. I can’t wait to meet with You again. In Jesus’ Name, I pray. Amen.”";

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
                "Morning | Night",
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
                      "Morning",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.green),
                    ),
                    Text(
                      morningPrayer,
                      style: const TextStyle(
                          fontSize: 15, height: 2, color: Colors.black),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    const Text(
                      "Night",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.green),
                    ),
                    Text(
                      nightPrayer,
                      style: const TextStyle(
                          fontSize: 15, height: 2, color: Colors.black),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
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
