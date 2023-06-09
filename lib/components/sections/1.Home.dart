import 'dart:html';
import 'package:flutter/material.dart';
import 'package:port_s/components/sections/widgets/on_hover_card.dart';
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
      SizedBox(height: size.height * 0.08),
      Row(
        children: [
          const Flexible(
            child: Text(
              "Hi there, welcome to my portfolio ! ",
              style: TextStyle(
                color: myWhite,
                fontWeight: FontWeight.w500,
                fontFamily: "RobotoMono",
                fontSize: 16.0,
              ),
            ),
          ),
          Image.asset("assets/logo.gif", height: 30.0, width: 30.0),
        ],
      ),
      SizedBox(
        height: size.height * 0.03,
      ),
      //EXTRA: add typewriter animation
      Text.rich(
        TextSpan(
            text: "Sahar",
            style: mySectionStyle(90.0, discordPurple),
            children: [
              TextSpan(
                text: " here.",
                style: mySectionStyle(90.0, myWhite),
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
            fontSize: 80.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0),
      ),
      SizedBox(
        height: size.height * 0.04,
      ),
      Text(
        "Hi, I am a software engineer/student with a passion for developing mobile apps.\nI particularly enjoy designing interfaces that are both visually appealing and intuitive,\nelevating the user experience and highlighting an app's full potential.",
        style: myParagraphStyle(18.0),
      ),
      SizedBox(
        height: size.height * 0.08,
      ),
      OnHoverCard(0.0, -8.0, 1.0, builder: (isHovered) {
        return TextButton(
          onPressed: () {
            AnchorElement anchorElement = AnchorElement(
                href:
                    "https://sahar.vercel.app/assets/assets/Sahar_Sarraj_Resume.pdf");
            anchorElement.download = "Sahar_Sarraj_Resume";
            anchorElement.click();
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
            child: SelectionContainer.disabled(
              child: Text(
                "Download my resume",
                style: myTextStyle(
                  16.0,
                  myPurpleAccentColor,
                ),
              ),
            ),
          ),
        );
      })
    ]);
  }
}
