import 'package:flutter/material.dart';
import 'package:cointena/splash_screen.dart';

void main() {
  runApp(Cointena());
}

class Cointena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff0A144A),
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner:false ,
    );
  }
}



