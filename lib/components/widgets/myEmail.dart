import 'package:flutter/material.dart';
import 'package:port_s/components/widgets/on_hover_text.dart';
import 'package:port_s/methods/launchSocials.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';

class MyEmail extends StatelessWidget {
  Size size;
  MyEmail(this.size, {super.key});
  LaunchSocials method = LaunchSocials();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0.0),
      child: GestureDetector(
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
                child: OnHoverText(builder: (isHovered) {
                  final myColor =
                      isHovered ? myPurpleAccentColor : myAccentGrey;
                  final mySize = isHovered ? 12.5 : 12.0;
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
      ),
    );
  }
}
