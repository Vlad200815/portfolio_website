import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 800,
            height: 400,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
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
                        width: 140,
                        height: 140,
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
                const SizedBox(width: 60),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ABOUT ME",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        "A dedicated Flutter Developer",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "based in Lyubishiv, Ukraine📍",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(width: 30),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "As a Junior Flutter Developer. I possess an impressive\n arsenal of skills in Flutter, Dart, Bloc, Hive, Firebase, Git \nand a little bit of Python with FastAPI. \nI excel in designing and maintaining responsive mobile apps \nand websites that offer a smooth use experience. \nMy expertise lies in crafting dynamic, engaging interfaces \nthrough writing clean and optimized code and utilizing\n cutting-edge development tools and techniques. I am also a team \nplayer who thrives in collaborating with cross-functional teams \nto produce outstanding applications.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
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
