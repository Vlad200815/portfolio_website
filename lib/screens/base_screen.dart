import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/projects_screen.dart';
import 'package:portfolio_website/widgets/my_bottom_bar.dart';

import '../widgets/my_app_bar.dart';
import 'about_screen.dart';
import 'home_screen.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: MyAppBar()),
          SliverFillViewport(
            delegate: SliverChildListDelegate([
              HomeScreen(),
              AboutScreen(),
              ProjectsScreen(),
            ]),
          ),
          SliverToBoxAdapter(child: MyBottomBar()),
        ],
      ),
      // body: Column(
      //   children: [
      //     MyAppBar(),
      //     bodyScreen,
      //     BottomAppBar(
      //       height: 200,
      //       elevation: 0,
      //       padding: EdgeInsets.all(0),
      //       child: MyBottomBar(),
      //     ),
      //   ],
      // ),
    );
  }
}
