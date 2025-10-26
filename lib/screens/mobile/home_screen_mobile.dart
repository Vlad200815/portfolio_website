import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "package:portfolio_website/functions/functions.dart";

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  State<HomeScreenMobile> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenMobile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 60),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final Uri _gitHubUrl = Uri.parse('https://github.com/Vlad200815');
  final Uri _linkednInUrl = Uri.parse(
    "https://www.linkedin.com/in/vlad-semeniuk-a112a6265/",
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height / 18),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Text(
                  "Cross-Platform👇",
                  style: TextStyle(
                    fontSize: size.width / 10,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  left: 1,
                  top: 0,
                  child: Text(
                    "Cross-Platform👇",
                    style: TextStyle(
                      fontSize: size.width / 10,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Text(
                  "Flutter Developer👋",
                  style: TextStyle(
                    fontSize: size.width / 10,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  left: 1,
                  top: 0,
                  child: Text(
                    "Flutter Developer👋",
                    style: TextStyle(
                      fontSize: size.width / 10,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height / 100),
            Text(
              "Hi, I'm Vlad Semeniuk. A possionate Flutter Developer",
              style: TextStyle(
                fontSize: size.width / 27,
                fontWeight: FontWeight.w900,
                color: Colors.grey,
              ),
            ),
            Text(
              "Developer based in Lutsk, Ukraine📍",
              style: TextStyle(
                fontSize: size.width / 27,
                fontWeight: FontWeight.w900,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: size.height / 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    await launchUrlFun(_gitHubUrl);
                  },
                  child: SizedBox(
                    height: 25,
                    width: 50,
                    child: Icon(FontAwesomeIcons.github),
                  ),
                ),
                SizedBox(width: size.width / 20),
                GestureDetector(
                  onTap: () async {
                    await launchUrlFun(_linkednInUrl);
                  },
                  child: SizedBox(
                    height: 25,
                    width: 50,
                    child: Icon(FontAwesomeIcons.linkedin),
                  ),
                ),
                SizedBox(width: size.width / 20),
                GestureDetector(
                  onTap: () {
                    downloadResume("assets/Resume.pdf");
                  },
                  child: SizedBox(
                    height: 25,
                    width: 50,
                    child: Icon(FontAwesomeIcons.fileArrowDown),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: size.height / 20),
        RotationTransition(
          turns: _controller,
          child: CircleAvatar(
            radius: size.height / 7,
            backgroundImage: AssetImage("assets/my_photo.jpg"),
          ),
        ),
        SizedBox(height: size.height / 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  "Tech Stack",
                  style: TextStyle(
                    fontSize: size.height / 50,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  left: 0.35,
                  top: 0,
                  child: Text(
                    "Tech Stack",
                    style: TextStyle(
                      fontSize: size.height / 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: size.width / 30),
            Container(color: Colors.grey[300], height: 25, width: 3.5),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: size.width / 25),
                    FlutterLogo(),
                    SizedBox(width: size.width / 25),
                    Image.asset("assets/skills/dart.png", scale: 35),
                    SizedBox(width: size.width / 25),
                    Image.asset("assets/skills/bloc.png", scale: 35),
                    SizedBox(width: size.width / 25),
                    Image.asset("assets/skills/hive.png", scale: 7),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: size.width / 25),
                    Image.asset("assets/skills/firebase.webp", scale: 13),
                    SizedBox(width: size.width / 25),
                    Image.asset("assets/skills/python.png", scale: 20),
                    SizedBox(width: size.width / 25),
                    Image.asset("assets/skills/fast_api.png", scale: 20),
                    SizedBox(width: size.width / 25),
                    Image.asset("assets/skills/git.png", scale: 40),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
