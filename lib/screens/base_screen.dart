import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/first_projects_screen.dart';
import 'package:portfolio_website/widgets/my_bottom_bar.dart';

import '../widgets/my_app_bar.dart';
import 'about_screen.dart';
import 'home_screen.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    final contactKey = GlobalKey();

    void scrollToContact() {
      Scrollable.ensureVisible(
        contactKey.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

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
          HomeScreen(),
          AboutScreen(),
          FirstProjectsScreen(),
          MyBottomBar(),
        ],

        // slivers: [
        // SliverAppBar(
        //   pinned: true, // <- keeps it visible
        //   floating: false,
        //   snap: false,
        //   elevation: 10,
        //   titleSpacing: 0,
        //   expandedHeight: 80, // adjust height if needed
        //   title: MyAppBar(
        //     onTapToHome: () => scrollToSection(homeKey),
        //     onTapToAbout: () => scrollToSection(aboutKey),
        //     onTapToFirstProjects: () => scrollToSection(firstProjectsKey),
        //     onTapToContact: () => scrollToSection(contactKey),
        //   ), // <- use your custom app bar widget
        // ),
        // SliverFillViewport(

        //   delegate: SliverChildListDelegate([

        //     HomeScreen(),
        //     AboutScreen(),
        //     FirstProjectsScreen(),
        //   ]),
        // ),
        // SliverFillViewport(
        //   delegate: SliverChildListDelegate([
        //     Container(key: homeKey, child: const HomeScreen()),
        //     Container(key: aboutKey, child: const AboutScreen()),
        //     Container(
        //       key: firstProjectsKey,
        //       child: const FirstProjectsScreen(),
        //     ),
        //     // const SizedBox(height: 150),
        //     SizedBox(height: 300, child: MyBottomBar(key: contactKey)),
        //   ]),
        // ),
        // SliverToBoxAdapter(child: MyBottomBar()),
      ),
    );
  }
}
