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
    final ScrollController _scrollController = ScrollController();

    final homeKey = GlobalKey();
    final aboutKey = GlobalKey();
    final firstProjectsKey = GlobalKey();

    void scrollToSction(GlobalKey key) {
      final context = key.currentContext;
      if (context != null) {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
        );
      }
    }

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            pinned: true, // <- keeps it visible
            floating: false,
            snap: false,
            elevation: 10,
            titleSpacing: 0,
            expandedHeight: 80, // adjust height if needed
            title: MyAppBar(
              onTapToHome: () => scrollToSction(homeKey),
              onTapToAbout: () => scrollToSction(aboutKey),
              onTapToFirstProjects: () => scrollToSction(firstProjectsKey),
            ), // <- use your custom app bar widget
          ),
          // SliverFillViewport(

          //   delegate: SliverChildListDelegate([

          //     HomeScreen(),
          //     AboutScreen(),
          //     FirstProjectsScreen(),
          //   ]),
          // ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(key: homeKey, child: const HomeScreen()),
              Container(key: aboutKey, child: const AboutScreen()),
              Container(
                key: firstProjectsKey,
                child: const FirstProjectsScreen(),
              ),
              const MyBottomBar(),
            ]),
          ),
          // SliverToBoxAdapter(child: MyBottomBar()),
        ],
      ),
    );
  }
}
