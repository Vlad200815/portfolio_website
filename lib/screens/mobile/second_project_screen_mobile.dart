import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/functions/functions.dart';

class SecondProjectScreenMobile extends StatelessWidget {
  const SecondProjectScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height / 10),

        Text(
          "ScoreCounter⚽",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: size.width / 12,
          ),
        ),
        SizedBox(height: size.height / 50),
        Text(
          textAlign: TextAlign.center,
          "ScoreCounter is an app with a\nfriendly interface that allows\nusers to track and save scores in games.\nThe app a huge customization\nand variouse settings so that \nyou could play anything!",
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
              borderRadius: BorderRadiusGeometry.circular(size.width / 20),
              child: SizedBox(
                height: size.height / 3.3,
                width: size.width / 3.3,
                child: Image.asset("assets/projects/score_counter_first.jpg"),
              ),
            ),
            SizedBox(width: size.width / 50),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(size.width / 20),
              child: SizedBox(
                height: size.height / 3.3,
                width: size.width / 3.3,
                child: Image.asset("assets/projects/score_counter_second.jpg"),
              ),
            ),
            SizedBox(width: size.width / 50),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(size.width / 20),
              child: SizedBox(
                height: size.height / 3.3,
                width: size.width / 3.3,
                child: Image.asset("assets/projects/score_counter_third.jpg"),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height / 20),
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
            GestureDetector(
              onTap: () async {
                final gitHubScoreCounter = Uri.parse(
                  "https://github.com/Vlad200815/ScoreCounter",
                );
                await launchUrlFun(gitHubScoreCounter);
              },
              child: Row(
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
                ],
              ),
            ),

            SizedBox(width: size.width / 25),
            GestureDetector(
              onTap: () async {
                final Uri getScoreCounter = Uri.parse(
                  "https://t.me/+QdvZd_y-Okc1Mjky",
                );
                await launchUrlFun(getScoreCounter);
              },
              child: Row(
                children: [
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
            ),
          ],
        ),
      ],
    );
  }
}
