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
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: 70,
      color: const Color.fromARGB(255, 255, 252, 252),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(width: 20),
              Image.asset("assets/my_logo.png"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              SizedBox(width: size.width / 80),
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
              SizedBox(width: size.width / 80),

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
              SizedBox(width: size.width / 80),

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
              SizedBox(width: size.width / 40),
            ],
          ),
        ],
      ),
    );
  }
}
