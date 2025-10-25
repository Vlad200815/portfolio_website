import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/desktop/first_projects_screen_desktop.dart';
import 'package:portfolio_website/screens/desktop/footer_screen_desktop.dart';
import '../../widgets/my_app_bar.dart';
import 'about_screen_desktop.dart';
import 'home_screen_desktop.dart';

class BaseScreenDesktop extends StatelessWidget {
  const BaseScreenDesktop({super.key});

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
          onTapToContact: () => scrollToPage(3),
        ),
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: [
          HomeScreenDesktop(),
          AboutScreenDesktop(),
          FirstProjectsScreenDesktop(),
          FooterScreenDesktop(),
        ],
      ),
    );
  }
}
