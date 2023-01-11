import 'package:dekutca/Admin/control_page.dart';
import 'package:dekutca/Firebase/authenticator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Leaders extends StatefulWidget {
  const Leaders({super.key});

  @override
  State<Leaders> createState() => _LeadersState();
}

class _LeadersState extends State<Leaders> {
  // main color 1
  Color mainColor1 = const Color.fromARGB(255, 34, 51, 105);

  // main color 2
  Color mainColor2 = const Color.fromARGB(255, 46, 139, 57);

  // variables to store the details of the user
  String userGmail = "";
  String userPassword = "";

  // this variable sets the initial value for the dropdown
  String initialValue = "Executive";

  // this variable stores the dropdown items
  var dropdownItems = [
    "Executive",
    "Major SCCs",
    "Other groups",
    "Bible Study",
  ];

  /*authenticattion section*/
  // error message and login status
  String? errorMessage = '';
  bool isLogin = true;

  // future sign in
  Future<void> signInWithEmailAndPassword(
      String userGmail, String userPassword) async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: userGmail,
        password: userPassword,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // variables representing storing the leaders details
    String executiveChairperson = "Mary Mbaire";
    String executiveViceChairperson = "Paul Brian";
    String executiveSecretary = "Mary Mbaire";
    String executiveViceSecretary = "Paul Brian";
    String executiveTreasurer = "Mary Mbaire";
    String executiveOrganizingSecretary = "Paul Brian";
    String executiveLiturgist = "Mary Mbaire";
    String executiveLibrarian = "Paul Brian";

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(color: mainColor1),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Center(
                          child: Text(
                            "Executive leaders",
                            style: GoogleFonts.ebGaramond(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.width * 0.01),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage("assets/members.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.width * 0.05),
                      SingleChildScrollView(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.26,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration:
                              const BoxDecoration(color: Colors.transparent),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    color: mainColor2,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Chairperson :",
                                              style: GoogleFonts.ebGaramond(
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),
                                            )),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(executiveChairperson,
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white))),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    color: mainColor2,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "V.Chairperson :",
                                              style: GoogleFonts.ebGaramond(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            )),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                                executiveViceChairperson,
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white))),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    color: mainColor2,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Secretary :",
                                              style: GoogleFonts.ebGaramond(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            )),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(executiveSecretary,
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white))),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    color: mainColor2,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "V.Secretary :",
                                              style: GoogleFonts.ebGaramond(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            )),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(executiveViceSecretary,
                                                style: GoogleFonts.ebGaramond(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white))),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    color: mainColor2,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Tresurer :",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            )),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(executiveTreasurer,
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white))),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    color: mainColor2,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Organizing Secretary :",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            )),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                                executiveOrganizingSecretary,
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white))),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    color: mainColor2,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Liturgist :",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            )),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(executiveLiturgist,
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white))),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    color: mainColor2,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Librarian :",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            )),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(executiveLibrarian,
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white))),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02)
                    ],
                  ),
                ),
              ),
              StreamBuilder(
                stream: Auth().authStateChanges,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                        height: MediaQuery.of(context).size.height * 0.306,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    userGmail = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: mainColor1,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                    borderSide: BorderSide(
                                      color: mainColor1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                    borderSide: BorderSide(
                                      color: mainColor1,
                                    ),
                                  ),
                                  labelText: "Gmail",
                                  labelStyle: GoogleFonts.ebGaramond(
                                      color: mainColor1, fontSize: 12),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    userPassword = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: mainColor1,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                    borderSide: BorderSide(
                                      color: mainColor1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                    borderSide: BorderSide(
                                      color: mainColor1,
                                    ),
                                  ),
                                  labelText: "Password",
                                  labelStyle: GoogleFonts.ebGaramond(
                                      color: mainColor1, fontSize: 12),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: DropdownButtonFormField(
                                value: initialValue,
                                dropdownColor: Colors.white,
                                iconEnabledColor:
                                    const Color.fromRGBO(24, 25, 84, 1),
                                iconDisabledColor:
                                    const Color.fromRGBO(24, 25, 84, 1),
                                items: dropdownItems.map((String items) {
                                  return DropdownMenuItem(
                                      value: items, child: Text(items));
                                }).toList(),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                    borderSide: BorderSide(
                                      color: mainColor1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                    borderSide: BorderSide(
                                      color: mainColor1,
                                    ),
                                  ),
                                  isDense: true,
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(12, 10, 12, 0),
                                ),
                                style: GoogleFonts.ebGaramond(
                                    color: mainColor1, fontSize: 13),
                                onChanged: (String? value) {},
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.03,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Center(
                                child: Text(
                                  'Forgot Password?',
                                  style: GoogleFonts.ebGaramond(
                                    fontSize: 12,
                                    color: mainColor1,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: ElevatedButton(
                                onPressed: () {
                                  signInWithEmailAndPassword(
                                      userGmail, userPassword);
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: mainColor1,
                                    onPrimary: Colors.white,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                child: Text(
                                  "LOGIN",
                                  style: GoogleFonts.ebGaramond(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ));
                  } else {
                    return const AdminControlPage();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
