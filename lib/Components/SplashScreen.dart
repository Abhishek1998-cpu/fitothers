import 'package:flutter/material.dart';
import './Home.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.centerLeft,
          //   end: Alignment.centerRight,
          //   colors: [Colors.blue, Colors.purple],
          // ),
          gradient: RadialGradient(
            colors: [Colors.purple, Colors.lightBlue],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Welcome to",
                style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              // color: Colors.blue,
              child: Text(
                "FITOTHERS",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              alignment: Alignment.center,
              // color: Colors.blue,
              child: Text(
                "Get the latest information about interesting health and fitness updates and facts around the world. We deliver the contents that makes you stay healthy, fit, and motivated.",
                textAlign: TextAlign.center,
                style: GoogleFonts.mateSc(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
