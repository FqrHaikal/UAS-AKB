import 'package:doyan_gunung/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';
// dapet dari pub.dev

class WalkThrough extends StatelessWidget {
  /*here we have a list of OnbordingScreen which we want to have, each OnbordingScreen have a imagePath,title and an desc.
      */
  final List<OnbordingData> list = [
    OnbordingData(
      image: AssetImage("assets/wt1.png"),
      titleText: Text(""),
      descText: Text("BERSIAPLAH UNTUK PETUALANGAN LUAR BIASA"),
    ),
    OnbordingData(
      image: AssetImage("assets/wt2.png"),
      titleText: Text(""),
      descText: Text("TERHUBUNG DENGAN ALAM"),
    ),
    OnbordingData(
      image: AssetImage("assets/wt3.png"),
      titleText: Text(""),
      descText: Text("TEMUKAN PENGALAMAN TAK TERLUPAKAN DIJALUR PENDAKIAN"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    /* remove the back button in the AppBar is to set automaticallyImplyLeading to false
  here we need to pass the list and the route for the next page to be opened after this. */
    return IntroScreen(
      onbordingDataList: list,
      colors: [
        //list of colors for per pages
        Color.fromARGB(255, 240, 245, 205),
        Colors.red,
      ],
      pageRoute: MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
      nextButton: Text(
        "NEXT",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      lastButton: Text(
        "GOT IT",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      skipButton: Text(
        "SKIP",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      selectedDotColor: Colors.orange,
      unSelectdDotColor: Colors.grey,
    );
  }
}
