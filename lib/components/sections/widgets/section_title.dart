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
        Flexible(
          child: Text(
            number,
            style: myTextStyle(22, myPurpleAccentColor),

            // style: myTextStyle(size.width * 0.025, myPurpleAccentColor),
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: mySectionStyle(25, myWhite),

            // style: mySectionStyle(size.width * 0.03, myWhite),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.025, top: 5.0),
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
