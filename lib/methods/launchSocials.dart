import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchSocials {
  //we define all our launchURL methods inside this class
  launchURL(String link) async {
    Uri url = Uri.parse(link);

    if (await canLaunchUrl(url)) {
      debugPrint("//////////////////\n$url//////////////////\n");
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller() async {
    const tel = "tel:+21694449450";
    if (await canLaunch(tel)) {
      await launch(tel);
    } else {
      throw 'Could not launch $tel';
    }
  }

  launchEmail() async {
    if (await canLaunch("mailto:saharsarraj20.ss@gmail.com")) {
      await launch("mailto:saharsarraj20.ss@gmail.com");
    } else {
      throw 'Could not launch email';
    }
  }
}
