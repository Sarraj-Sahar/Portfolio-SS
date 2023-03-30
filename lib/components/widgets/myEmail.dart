import 'package:flutter/material.dart';
import 'package:port_s/components/sections/widgets/on_hover_card.dart';
import 'package:port_s/methods/launchSocials.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';

class MyEmail extends StatelessWidget {
  Size size;
  MyEmail(this.size, {super.key});
  LaunchSocials method = LaunchSocials();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        method.launchEmail();
      },
      child: Container(
        width: size.width * 0.1,
        height: size.height - 82,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RotatedBox(
              quarterTurns: 45,
              child: OnHoverCard(-8.0, 0.0, 1.04, builder: (isHovered) {
                final myColor = isHovered ? myPurpleAccentColor : myAccentGrey;
                const mySize = 12.0;
                return Text(
                  "saharsarraj20.ss@gmail.com",
                  style: myTextStyle(mySize, myColor),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                height: size.height * 0.2,
                width: 1.5,
                color: Color(0xffffA8B2D1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
