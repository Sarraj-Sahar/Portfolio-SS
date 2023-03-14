import 'package:flutter/material.dart';

import 'package:port_s/utils/colors.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({Key? key}) : super(key: key);
  textStyle(color) => TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: "RobotoMono",
        fontSize: 20,
      );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("<", style: textStyle(myPurpleAccentColor)),
          Text("SS", style: textStyle(myWhite)),
          Text(
            "/>",
            style: textStyle(myPurpleAccentColor),
          ),
        ],
      ),
    );
  }
}
