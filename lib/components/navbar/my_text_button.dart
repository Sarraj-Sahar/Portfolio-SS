import 'package:flutter/material.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';

class MyTextButton extends StatelessWidget {
  String text;
  double padding;
  double fontSize;
  double borderWidth;
  Function() myFunction;

  MyTextButton(
      {super.key,
      required this.text,
      required this.padding,
      required this.fontSize,
      required this.borderWidth,
      required this.myFunction});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: myFunction,
      style: ButtonStyle(
        // uncomment this to change the color of the TEXT.
        // foregroundColor: MaterialStateProperty.resolveWith<Color>(
        //     (Set<MaterialState> states) {
        //   if (states.contains(MaterialState.hovered)) return Colors.yellow;
        //   return Colors.blue;
        // }),
        side: MaterialStateProperty.all(
          BorderSide(width: borderWidth, color: myPurpleAccentColor),
        ),
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
        padding: EdgeInsets.all(padding),
        child: Text(
          "$text",
          style: myTextStyle(fontSize, myPurpleAccentColor),
        ),
      ),
    );
  }
}
