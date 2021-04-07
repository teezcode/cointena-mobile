import 'dart:async';
import 'package:cointena/get_started.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      startTimer(context);
    });
  }

  void startTimer(BuildContext context){
    Timer timer = Timer(Duration(seconds: 5), () =>Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context){
          return GetStarted();
        })), );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A144A),
      body: Center(
        child: Image.asset('assets/images/cointena.png',
        height: 100,
          width: 100,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
