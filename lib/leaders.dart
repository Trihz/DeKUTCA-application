import 'package:dekutca/admins_control_page.dart';
import 'package:flutter/material.dart';

class Leaders extends StatefulWidget {
  const Leaders({super.key});

  @override
  State<Leaders> createState() => _LeadersState();
}

class _LeadersState extends State<Leaders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(color: Color.fromARGB(255, 45, 50, 89)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: const TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 45, 50, 89),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                          ),
                          labelText: "Username",
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 45, 50, 89),fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: const TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 45, 50, 89),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                          ),
                          labelText: "Password",
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 45, 50, 89),fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: const TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.transparent,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 45, 50, 89),
                            ),
                          ),
                          labelText: "Group Category",
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 45, 50, 89),
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration:
                              const BoxDecoration(color: Colors.transparent),
                          child: const Center(
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 45, 50, 89),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AdminControlPage()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 45, 50, 89),
                            onPrimary: Colors.white,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
