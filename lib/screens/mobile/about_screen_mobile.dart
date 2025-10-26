import 'package:flutter/material.dart';

class AboutScreenMobile extends StatefulWidget {
  const AboutScreenMobile({super.key});

  @override
  State<AboutScreenMobile> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreenMobile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: size.height / 20),
        Text(
          "ABOUT ME",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w900,
            fontSize: size.height / 50,
          ),
        ),
        SizedBox(height: size.height / 50),
        Text(
          "I am a dedicated Flutter Developer",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: size.width / 17,
          ),
        ),
        Text(
          "based in Lutsk, Ukraine📍",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: size.width / 17,
          ),
        ),
        SizedBox(height: size.height / 50),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              textAlign: TextAlign.center,
              "As a Junior Flutter Developer. I possess an impressive\narsenal of skills in Flutter, Dart, Bloc, Hive, Firebase, Git \nand a little bit of Python with FastAPI. \nI excel in designing and maintaining responsive mobile apps \nand websites that offer a smooth use experience. \nMy expertise lies in crafting dynamic, engaging interfaces \nthrough writing clean and optimized code and utilizing\ncutting-edge development tools and techniques. I am also a team \nplayer who thrives in collaborating with cross-functional teams \nto produce outstanding applications.",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: size.width / 10,
              ),
            ),
          ),
        ),
        SizedBox(height: size.height / 40),
        FittedBox(
          child: SizedBox(
            height: size.height / 3,
            width: size.width / 2,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  child: Image.asset("assets/about.jpg", scale: 3),
                ),

                Positioned(
                  bottom: -30,
                  right: -30,
                  child: Container(
                    width: size.width / 2.5,
                    height: size.height / 5.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Image.asset("assets/developer.png", scale: 5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
