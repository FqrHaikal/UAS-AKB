import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 245, 205),
      body: Center(
        child: Image.asset(
          'assets/logoDoyanGunung.png',
          height: 1000,
          width: 1000,
        ),
      ),
    );
  }
}
