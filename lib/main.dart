import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/responsiveness/responsiveness.dart';
import 'package:portfolio_website/screens/desktop/base_screen_desktop.dart';
import 'package:portfolio_website/screens/mobile/base_screen_mobile.dart';
import 'package:portfolio_website/screens/tablet/base_screen_tablet.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAk5Hu-5WygQ2l8F1oSxSouftUv7myCVVI",
      appId: "1:569240405385:web:e0003e03c084feaa480d58",
      messagingSenderId: "569240405385",
      projectId: "portfoliowebsite-6d169",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.roboto().fontFamily),
      home: ResponsiveLayOut(
        desktop: BaseScreenDesktop(),
        mobile: BaseScreenMobile(),
        table: BaseScreenTablet(),
      ),
    );
  }
}
