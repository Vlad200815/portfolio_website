import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final void Function()? onTapToHome;
  final void Function()? onTapToAbout;
  final void Function()? onTapToFirstProjects;
  final void Function()? onTapToContact;

  const MyAppBar({
    super.key,
    this.onTapToAbout,
    this.onTapToFirstProjects,
    this.onTapToHome,
    this.onTapToContact,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      color: const Color.fromARGB(255, 255, 252, 252),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(width: 10),
              Image.asset("assets/my_logo.png", fit: BoxFit.cover),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: onTapToHome,
                child: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: onTapToAbout,
                child: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: onTapToFirstProjects,
                child: Text(
                  "Projects",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: onTapToContact,
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(width: 60),
            ],
          ),
        ],
      ),
    );
  }
}
