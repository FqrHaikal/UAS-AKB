import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:doyan_gunung/splashs.dart';
import 'package:doyan_gunung/wt.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: SplashScreen(),
            nextScreen: WalkThrough(),
            splashTransition: SplashTransition
                .scaleTransition, // Transisi animasi dari splash screen (berupa scaling)
            pageTransitionType: PageTransitionType.leftToRight,
            backgroundColor: Color.fromARGB(255, 240, 245, 205)));
  }
}
