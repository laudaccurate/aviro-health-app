// ignore_for_file: prefer_const_constructors

import 'package:aviro_health_app/screens/home.dart';
import 'package:aviro_health_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/splash.gif",
              height: size.height * 0.5,
              width: size.width * 0.8,
            ),
          ),
          Constants.spacer,
          DefaultTextStyle(
            style: GoogleFonts.comfortaa(
              color: Constants.mainColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(
              repeatForever: false,
              totalRepeatCount: 1,
              onFinished: () {
                Future.delayed(Duration(milliseconds: 400), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                });
              },
              animatedTexts: [
                TypewriterAnimatedText(
                  Constants.appName,
                  speed: Duration(milliseconds: 200),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
