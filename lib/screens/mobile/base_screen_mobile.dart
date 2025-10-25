import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/mobile/about_screen_mobile.dart';
import 'package:portfolio_website/screens/mobile/first_project_screen_mobile.dart';
import 'package:portfolio_website/screens/mobile/footer_screen_mobile.dart';
import 'package:portfolio_website/screens/mobile/home_screen_mobile.dart';
import 'package:portfolio_website/screens/mobile/second_project_screen_mobile.dart';
import 'package:portfolio_website/widgets/my_app_bar.dart';

class BaseScreenMobile extends StatelessWidget {
  const BaseScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    final contactKey = GlobalKey();

    void scrollToPage(int page) {
      _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: MyAppBar(
          onTapToHome: () => scrollToPage(0),
          onTapToAbout: () => scrollToPage(1),
          onTapToFirstProjects: () => scrollToPage(2),
          onTapToContact: () => scrollToPage(4),
        ),
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: [
          HomeScreenMobile(),
          AboutScreenMobile(),
          FirstProjectScreenMobile(),
          SecondProjectScreenMobile(),
          FooterScreenMobile(),
        ],
      ),
    );
  }
}
