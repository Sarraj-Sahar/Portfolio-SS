import 'package:flutter/cupertino.dart';
import 'package:port_s/components/sections/widgets/on_hover_card.dart';
import 'package:port_s/components/sections/widgets/on_hover_text.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';

//TODO : the barrel thhing so I could import everything under utils once

class MyNavLink extends StatelessWidget {
  String number;
  String title;

  MyNavLink({super.key, required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return OnHoverCard(0, -2, 1.04, builder: (isHovered) {
      final myColor = isHovered ? myPurpleAccentColor : white;
      // final mySize = isHovered ? 14.5 : 14.0;
      return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        //why didn't I just use a row instead of RichText
        child: RichText(
          text: TextSpan(
            text: number,
            style: myTextStyle(14.0, myPurpleAccentColor),
            children: [
              TextSpan(
                text: title,
                style: myTextStyle(14.0, myColor),
              ),
            ],
          ),
        ),
      );
    });
  }
}
