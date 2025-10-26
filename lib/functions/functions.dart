import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

Future<void> launchUrlFun(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

void downloadResume(String imgPath) {
  // const resumePath = 'assets/Resume.pdf';
  final anchor = html.AnchorElement(href: imgPath)
    ..setAttribute('download', 'Vlad_Resume.pdf') // forces browser to download
    ..click();
}
