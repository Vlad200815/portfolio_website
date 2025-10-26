import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/functions/functions.dart';

class FirstProjectsScreenDesktop extends StatelessWidget {
  const FirstProjectsScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: 800,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PORTFOLIO",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Each project is a unique piece of development🧩",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  child: Image.asset(
                    "assets/projects/lybianka_first.jpg",
                    scale: 5,
                  ),
                ),
                const SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  child: Image.asset(
                    "assets/projects/lybianka_second.jpg",
                    scale: 5,
                  ),
                ),
                const SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  child: Image.asset(
                    "assets/projects/lybianka_third.jpg",
                    scale: 5,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lybianka💸",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "An expense tracker is an app with a\nfriendly interface that allows\nusers to track and save money for\npersonal or business use.\nThe app provides a weekly graphic,\naim hunting and different money advice!",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Flutter",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "Dart",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "Bloc",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "Prefs",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            final Uri lybiankaGitHubUrl = Uri.parse(
                              "https://github.com/Vlad200815/Lybianka",
                            );
                            await launchUrlFun(lybiankaGitHubUrl);
                          },
                          child: Row(
                            children: [
                              Text(
                                "Code",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Icon(FontAwesomeIcons.github),
                            ],
                          ),
                        ),

                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () async {
                            final Uri getLybianka = Uri.parse(
                              "https://t.me/+kPF1QBuxAKFjZDNi",
                            );
                            await launchUrlFun(getLybianka);
                          },
                          child: Row(
                            children: [
                              Text(
                                "Get App",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Icon(Icons.download_rounded),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            //new project
            const SizedBox(height: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "ScoreCounter⚽",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "An expense tracker is an app with a\nfriendly interface that allows\nusers to track and save money for\npersonal or business use.\nThe app provides a weekly graphic,\naim hunting and different money advice!",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Flutter",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "Dart",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "Bloc",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "Prefs",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
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
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Icon(FontAwesomeIcons.github),
                            ],
                          ),
                        ),

                        const SizedBox(width: 20),
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
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Icon(Icons.download_rounded),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 40),
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  child: Image.asset(
                    "assets/projects/score_counter_first.jpg",
                    scale: 5,
                  ),
                ),
                const SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  child: Image.asset(
                    "assets/projects/score_counter_second.jpg",
                    scale: 5,
                  ),
                ),
                const SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  child: Image.asset(
                    "assets/projects/score_counter_third.jpg",
                    scale: 5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
