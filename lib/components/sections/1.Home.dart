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
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Hi, my name is ",
          style: myTextStyle(20),
          // style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontFamily: "RobotoMono",
          //     fontSize: 14.0,
          //     foreground: Paint()..shader = mylinearGradient),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        const Text(
          "Sahar Sarraj.",
          style: TextStyle(
              color: myWhite,
              fontFamily: "Calibre",
              fontWeight: FontWeight.w700,
              letterSpacing: 0.25,
              fontSize: 68),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        const Text(
          "I build mobile apps.",
          style: TextStyle(
              color: Color(0xffffA8B2D1),
              fontFamily: "Calibre",
              fontSize: 60,
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        const Text(
          "I am a software engineer who likes building mobile apps.I particularly\nenjoy the creative process of designing them and coming up with \nvisually appealing and attractive interfaces for my apps.",
          style: TextStyle(
              color: Color(0xffffA8B2D1),
              fontFamily: "Roboto-Mono",
              fontWeight: FontWeight.normal,
              fontSize: 16,
              wordSpacing: 0.75,
              height: 1.5),
        ),
        SizedBox(
          height: size.height * 0.08,
        ),
        TextButton(
          onPressed: () {
            method.launchEmail();
          },
          style: ButtonStyle(
            // foregroundColor: MaterialStateProperty.resolveWith<Color>(
            //     (Set<MaterialState> states) {
            //   if (states.contains(MaterialState.hovered)) return Colors.yellow;
            //   return Colors.blue;
            // }),
            side: MaterialStateProperty.all(
                const BorderSide(width: 0.5, color: myPurpleAccentColor)),
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
              "Get in touch !",
              style: myTextStyle(16),
            ),
          ),
        ),
      ]),
    );
  }
}
