import 'package:flutter/cupertino.dart';
import 'package:port_s/components/widgets/on_hover_text.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';

//TODO : the barrel thhing so I could import everything under utils once

class MyNavLink extends StatelessWidget {
  String number;
  String title;

  MyNavLink({super.key, required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return OnHoverText(builder: (isHovered) {
      final myColor = isHovered ? myPurpleAccentColor : white;
      final mySize = isHovered ? 14.5 : 14.0;
      return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        child: RichText(
          text: TextSpan(
            text: '$number',
            style: myTextStyle(15, myPurpleAccentColor),
            children: [
              TextSpan(
                text: '$title',
                style: TextStyle(
                  color: myColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: "RobotoMono",
                  fontSize: mySize,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

////
///
class oldMyNavLink extends StatelessWidget {
  String number;
  String title;

  oldMyNavLink({required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Text(
              this.number,
              style: const TextStyle(
                color: myPurpleAccentColor,
                fontFamily: "RobotoMono",
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: white,
                fontFamily: "RobotoMono",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
