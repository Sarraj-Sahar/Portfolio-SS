import 'package:flutter/material.dart';
import 'package:port_s/methods/launchSocials.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';

class HomeHero extends StatelessWidget {
  Size size;
  HomeHero(this.size, {super.key});

  LaunchSocials method = LaunchSocials();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: size.height * 0.1,
      ),
      Row(
        children: [
          const Text(
            "Hi there, welcome to my portfolio ! ",
            style: TextStyle(
              color: myWhite,
              fontWeight: FontWeight.w500,
              fontFamily: "RobotoMono",
              fontSize: 16,
            ),
          ),
          //EXTRA : add some cursor "animation" when image is hovered
          Image.asset("../../../assets/imgs/silky2.gif", height: 30, width: 30),
          // Image.asset("../../../assets/imgs/glass_heart.gif",
          //     height: 50, width: 50),
          // Image.asset("../../../assets/imgs/starsss.gif",
          //     height: 50, width: 50),
        ],
      ),
      SizedBox(
        height: size.height * 0.03,
      ),
      //EXTRA: add typewriter animation
      RichText(
        text: TextSpan(
            text: "Sahar",
            style: mySectionStyle(68, discordPurple),
            children: [
              TextSpan(
                text: " here.",
                style: mySectionStyle(68, myWhite),
              )
            ]),
      ),
      SizedBox(
        height: size.height * 0.01,
      ),
      const Text(
        "I build mobile apps.",
        style: TextStyle(
            color: myAccentGrey,
            fontFamily: "Calibre",
            fontSize: 60,
            fontWeight: FontWeight.bold,
            letterSpacing: 2),
      ),
      SizedBox(
        height: size.height * 0.04,
      ),
      Text(
        "I am a software engineer who likes building mobile apps.I particularly\nenjoy the creative process of designing them and coming up with \nvisually appealing and attractive interfaces for my apps.",
        style: myParagraphStyle(16.0),
      ),
      SizedBox(
        height: size.height * 0.08,
      ),
      TextButton(
        onPressed: () {
          //TODO:  put cv on google drive and launchURL to that link
          method.launchEmail();
        },
        style: ButtonStyle(
          // foregroundColor: MaterialStateProperty.resolveWith<Color>(
          //     (Set<MaterialState> states) {
          //   if (states.contains(MaterialState.hovered)) return Colors.yellow;
          //   return Colors.blue;
          // }),
          side: MaterialStateProperty.all(
              const BorderSide(width: 1, color: myPurpleAccentColor)),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (states) {
              if (states.contains(MaterialState.hovered) ||
                  states.contains(MaterialState.pressed))
                return myPurpleAccentColor.withOpacity(0.2);

              return Colors.transparent;
            },
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Download my resume",
            style: myTextStyle(16, myPurpleAccentColor),
          ),
        ),
      ),
    ]);
  }
}
