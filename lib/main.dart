import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'Main/mainscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "DeKUT Catholic Chaplaincy",
            style: TextStyle(
                color: Color.fromARGB(255, 45, 50, 89),
                fontWeight: FontWeight.w400,
                fontSize: 20,
                wordSpacing: 1),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/sisterirene.jpg"),
                  fit: BoxFit.fill),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          const Text(
            "DeKUTCC",
            style: TextStyle(
              color: Color.fromARGB(255, 45, 50, 89),
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
          ),
        ],
      ),
      duration: 1500,
      nextScreen: const MainScreen(),
      splashIconSize: 250,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 1),
      backgroundColor: Colors.white,
    );
  }
}
