import 'package:dekutca/Admin/announcement_admins.dart';
import 'package:dekutca/Admin/announcement_updates.dart';
import 'package:dekutca/Admin/bible-study_admins.dart';
import 'package:dekutca/Admin/bible_study_updates.dart';
import 'package:dekutca/Admin/group_admins.dart';
import 'package:dekutca/Admin/group_updates.dart';
import 'package:dekutca/Admin/mass_admins.dart';
import 'package:dekutca/Admin/mass_updates.dart';
import 'package:dekutca/Admin/scc_admins.dart';
import 'package:dekutca/Admin/scc_updates.dart';
import 'package:dekutca/Admin/weekly_activities_admin.dart';
import 'package:dekutca/Admin/weekly_activities_updates.dart';
import 'package:flutter/material.dart';

class AdminControlPage extends StatefulWidget {
  const AdminControlPage({super.key});

  @override
  State<AdminControlPage> createState() => _AdminControlPageState();
}

class _AdminControlPageState extends State<AdminControlPage> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 34, 51, 105);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(color: mainColor1),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: const Center(
                        child: Text(
                          "Administrators",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: mainColor2,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(2)),
                            ),
                            child: const Center(
                              child: Text(
                                "Father",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: mainColor2,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(2)),
                            ),
                            child: const Center(
                              child: Text(
                                "Executive",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: mainColor2,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(2)),
                            ),
                            child: const Center(
                              child: Text(
                                "SCC\nleaders",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: mainColor2,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(2)),
                            ),
                            child: const Center(
                              child: Text(
                                "Group\nleaders",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: mainColor2,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)),
                            ),
                            child: const Center(
                              child: Text(
                                "Bible study\nleaders",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: const Center(
                        child: Text(
                          "",
                          style: TextStyle(
                            color: Colors.transparent,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.62,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const AnnouncementAdmins(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                            const Announcements_Updates(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06),
                            const SCC_Admins(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                            const SCC_Updates(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06),
                            const GroupAdmins(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                            const GroupUpdates(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06),
                            const BibleStudyAdmins(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                            const BibleStudyUpdates(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06),
                            const WeeklyActivitiesAdmin(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06),
                            const WeeklyActivitiesUpdates(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06),
                            const MassAdmins(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06),
                            const MassUpdates(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
