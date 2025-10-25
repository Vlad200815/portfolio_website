import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstProjectScreenMobile extends StatelessWidget {
  const FirstProjectScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height / 20),
        Text(
          "PORTFOLIO",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w900,
            fontSize: size.height / 40,
          ),
        ),
        SizedBox(height: size.height / 100),
        Text(
          "Each project is a unique piece of development🧩",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: size.height / 60,
          ),
        ),
        SizedBox(height: size.height / 30),
        Text(
          "Lybianka💸",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: size.width / 12,
          ),
        ),
        SizedBox(height: size.height / 100),
        Text(
          textAlign: TextAlign.center,
          "An expense tracker is an app with a\nfriendly interface that allows\nusers to track and save money for\npersonal or business use.\nThe app provides a weekly graphic,\naim hunting and different money advice!",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: size.width / 25,
          ),
        ),
        SizedBox(height: size.height / 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(size.width / 35),
              child: Image.asset(
                "assets/projects/lybianka_first.jpg",
                scale: 5,
              ),
            ),
            SizedBox(width: size.width / 50),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(size.width / 35),
              child: Image.asset(
                "assets/projects/lybianka_second.jpg",
                scale: 5,
              ),
            ),
            SizedBox(width: size.width / 50),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(size.width / 35),
              child: Image.asset(
                "assets/projects/lybianka_third.jpg",
                scale: 5,
              ),
            ),
          ],
        ),
        SizedBox(height: size.height / 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: size.width / 25,
              ),
            ),
            SizedBox(width: size.width / 25),
            Text(
              "Dart",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: size.width / 25,
              ),
            ),
            SizedBox(width: size.width / 25),
            Text(
              "Bloc",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: size.width / 25,
              ),
            ),
            SizedBox(width: size.width / 25),
            Text(
              "Prefs",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: size.width / 25,
              ),
            ),
          ],
        ),
        SizedBox(height: size.height / 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "Code",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: size.width / 25,
              ),
            ),
            SizedBox(width: size.width / 60),
            Icon(FontAwesomeIcons.github),
            SizedBox(width: size.width / 25),
            Text(
              "Get App",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: size.width / 25,
              ),
            ),
            SizedBox(width: size.width / 60),
            Icon(Icons.download_rounded),
          ],
        ),
      ],
    );
  }
}
