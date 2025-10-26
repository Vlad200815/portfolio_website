import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/functions/functions.dart';

class FooterScreenMobile extends StatelessWidget {
  const FooterScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height / 6),

            /// --- Title ---
            Text(
              'Vlad.dev',
              style: TextStyle(
                fontSize: size.width / 6,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: Offset(0.5, 0.5),
                    blurRadius: 1,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),

            SizedBox(height: size.height / 50),

            /// --- Contact Button ---
            GestureDetector(
              onTap: () async {
                final Uri myTg = Uri.parse("https://t.me/@Vlad_Semeniuk_18");
                await launchUrlFun(myTg);
              },
              child: Container(
                height: size.height / 14,
                width: size.width / 2.5,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(size.width / 17),
                ),
                child: Center(
                  child: Text(
                    "CONTACT ME",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width / 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: size.height / 50),

            Text(
              "Don't be shy! Hit me up!👇",
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width / 20,
                fontWeight: FontWeight.w900,
              ),
            ),

            SizedBox(height: size.height / 30),

            /// --- Contact Info Section ---
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height / 30),
                _buildInfoRow(
                  icon: const Icon(Icons.mail_rounded, color: Colors.blue),
                  title: "Mail",
                  subtitle: "svg110308@gmail.com",
                ),
                SizedBox(height: size.height / 30),

                _buildInfoRow(
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    color: Colors.blue,
                  ),
                  title: "GitHub",
                  subtitle: "github.com/Vlad200815",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required Widget icon,
    required String title,
    required String subtitle,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
