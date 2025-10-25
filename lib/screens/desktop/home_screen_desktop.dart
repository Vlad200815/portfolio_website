import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreenDesktop extends StatefulWidget {
  const HomeScreenDesktop({super.key});

  @override
  State<HomeScreenDesktop> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenDesktop>
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: SizedBox(
        width: 800,
        height: size.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        children: [
                          Text(
                            "Cross-Platform👇",
                            style: TextStyle(
                              fontSize: 40,
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
                                fontSize: 40,
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
                              fontSize: 40,
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
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Hi, I'm Vlad Semeniuk. A possionate Fulutter",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Developer based in Lutsk, Ukraine📍",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Icon(FontAwesomeIcons.github),
                          ),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(FontAwesomeIcons.linkedin),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 40),

                  RotationTransition(
                    turns: _controller,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage("assets/my_photo.jpg"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Row(
              children: [
                Stack(
                  children: [
                    Text(
                      "Tech Stack",
                      style: TextStyle(
                        fontSize: 14,
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
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Container(color: Colors.grey[300], height: 25, width: 3.5),
                const SizedBox(width: 20),
                FlutterLogo(),
                const SizedBox(width: 15),
                Image.asset("assets/skills/dart.png", scale: 35),
                const SizedBox(width: 15),
                Image.asset("assets/skills/bloc.png", scale: 35),
                const SizedBox(width: 15),
                Image.asset("assets/skills/hive.png", scale: 7),
                const SizedBox(width: 15),
                Image.asset("assets/skills/firebase.webp", scale: 13),
                const SizedBox(width: 15),
                Image.asset("assets/skills/python.png", scale: 20),
                const SizedBox(width: 15),
                Image.asset("assets/skills/fast_api.png", scale: 20),
                const SizedBox(width: 15),
                Image.asset("assets/skills/git.png", scale: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
