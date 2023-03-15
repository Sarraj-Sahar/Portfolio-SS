import 'package:flutter/material.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';

class SectionTtitle extends StatelessWidget {
  String number;
  String title;
  Size size;
  SectionTtitle(this.number, this.title, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          number,
          style: myTextStyle(25, myPurpleAccentColor),
          // style: mySectionStyle(25, myPurpleAccentColor),
        ),
        Text(
          title,
          style: mySectionStyle(30, myWhite),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 5.0),
          child: Container(
            width: size.width * 0.2,
            height: 1,
            color: myAccentGrey,
          ),
        )
      ],
    );
  }
}
